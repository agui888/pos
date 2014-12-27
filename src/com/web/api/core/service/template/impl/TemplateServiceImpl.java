package com.web.api.core.service.template.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import net.sf.json.JSONObject;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.action.utils.ValidatorUtils;
import com.web.api.core.dao.BaseDao;
import com.web.api.core.dao.DetailDao;
import com.web.api.core.entity.PageEntity;
import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.DetailDaoRef;
import com.web.api.core.exception.ExistsException;
import com.web.api.core.exception.ServiceException;
import com.web.api.core.global.Cache;
import com.web.api.core.service.template.TemplateService;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.GenericsUtils;
import com.web.api.core.utils.JsonConverter;
import com.web.api.core.utils.SpringContextUtils;

/**
 * @author Tobin
 * 2014-5-8
 */
@SuppressWarnings("unchecked")
public class TemplateServiceImpl implements TemplateService {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@SuppressWarnings("rawtypes")
	private BaseDao baseDao;
	
	@SuppressWarnings("rawtypes")
	private DetailDao detailDao;

	@SuppressWarnings("rawtypes")
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
	/**
	 * 通用列表查询
	 */
	@Override
	public JSONObject list(Map<String, Object> map) {
		List<?> list = null;
		try {
			list = (List<?>) baseDao.selectAll(map);			
		} catch(Exception e) {
			logger.error("list error!", e);
			throw new ServiceException(e);
		}

		JSONObject jsonObject = new JSONObject();
		jsonObject.accumulate("total", list.size(), JsonConverter.getJsonConfig());
		jsonObject.accumulate("rows", list, JsonConverter.getJsonConfig());

		return jsonObject;
	}

	/**
	 * 通用列表查询
	 */
	@Override
	public JSONObject list(Map<String, Object> map, PageEntity pageEntity) {
		int count = 0;
		List<?> list = null;
		
		try {
			count = baseDao.count(map);
			int page[] = pageEntity.getPage(count, pageEntity.getPageSize());
			list = (List<?>) baseDao.selectAll(map, new RowBounds(page[0], page[1]));
		} catch(Exception e) {
			logger.error("list error!", e);
			throw new ServiceException(e);
		}

		JSONObject jsonObject = new JSONObject();
		jsonObject.accumulate("total", count, JsonConverter.getJsonConfig());
		jsonObject.accumulate("rows", list, JsonConverter.getJsonConfig());

		return jsonObject;
	}
	
	/**
	 * 检验
	 */
	@Override
	public boolean validated(String name, String value, String idValue) {
		try {
			int count = baseDao.validate(name, value, idValue);
			return (count > 0);
		} catch(Exception e) {
			logger.error("list error!", e);
			throw new ServiceException(e);
		}
	}

	/**
	 * 通用保存
	 */
	@Override
	public String save(TEntity<?> entity) {
		return save(entity, null);
	}
	
	/**
	 * 通用保存
	 */
	@Override
	public String save(TEntity<?> entity, List<TEntity<?>>[] detailEntity) {
		if (baseDao.exists(entity) > 0) {
			logger.debug("重复记录.");
			throw new ExistsException("重复记录.");			
		}
		
		String id = null;
		try {
			int i = 0;
			
			if (BaseUtils.isEmpty(entity.getId())) {
				i = baseDao.insert(entity);
			} else {
				i = baseDao.update(entity);
			}

			logger.debug("insert or update #row:" + i);
			Object value = entity.getId();
			if (value != null)
				id = value.toString();
			
			if (detailEntity != null) 
				saveDetail(detailEntity, id);
			
		} catch (Exception e) {
			logger.error("save error!", e);
			throw new ServiceException(e);
		}
		return id;
	}

	/**
	 * 通用物理删除
	 */
	@Override
	public int deleteById(String ids) {
		int i = 0;
		try {
			for (String id : ids.split(",")) {
				i += baseDao.deleteById(id.trim());
			}
		} catch(Exception e) {
			logger.error("deleteById error!", e);
			throw new ServiceException(e);
		}
		return i;
	}

	/**
	 * 通用逻辑删除
	 */
	@Override
	public int removeById(String ids) {
		int i = 0;
		try {
			for (String id : ids.split(",")) {
				i += baseDao.removeById(id.trim());
			}
		} catch(Exception e) {
			logger.error("removeById error!", e);
			throw new ServiceException(e);
		}
		return i;
	}

	/**
	 * 根据ID检查记录是否存在
	 */
	@Override
	public int exists(TEntity<?> entity) {
		int i = 0;
		try {
			i = baseDao.exists(entity);
		} catch(Exception e) {
			logger.error("exists error!", e);
			throw new ServiceException(e);
		}
		return i;
	}

	/**
	 * 根据ID查找单条记录
	 */
	@Override
	public TEntity<?> selectById(String id) {
		TEntity<?> entity = null;
		try {
			entity = baseDao.selectById(id);
		} catch(Exception e) {
			logger.error("selectById error!", e);
			throw new ServiceException(e);
		}
		return entity;
	}
	
	/**
	 * 以不分页方式导出Excel记录
	 */
	@Override
	public List<TEntity<?>> exportExcel(Map<String, Object> map) {
		List<TEntity<?>> list = null;
		
		try {
			list = (List<TEntity<?>>) baseDao.selectAll(map, new RowBounds());			
		} catch(Exception e) {
			logger.error("export excel error!", e);
			throw new ServiceException(e);
		}

		return list;		
	}
	
	/**
	 * 导入 Excel
	 */
	@Override
	public List<Map<String, Object>> importExcel(TEntity<?> entity, String sessionId, 
			String columnParam[], String cellsParam[]){
		
		List<Map<String, Object>> errorList = new ArrayList<Map<String, Object>>();
		
		// 开始导入
		File excel = new File(Cache.sysPath + "/upload/" + sessionId + ".xls");
		if (excel.exists()) {
			Workbook wb = null;
			try {
				wb = Workbook.getWorkbook(excel);
				if (wb != null) {
					Sheet[] sheets = wb.getSheets();
					
					if (sheets != null && sheets.length != 0) {  // 只导第一个 Sheet 工作薄
						for (int s = 1; s < sheets[0].getRows(); s ++ ) {  // 取出第一个 Sheet 工作薄总行数  Rows
							Cell[] cell = sheets[0].getRow(s);

							if (cell != null && cell.length != 0)  // 取出第一个 Sheet 工作薄的总列数  Cell
								for (int c = 0; c < cell.length; c ++ )
									for (int i = 0; i < cellsParam.length ; i ++)
										if (c == BaseUtils.strToInt(cellsParam[i]))
											GenericsUtils.setClassMethod(entity, columnParam[i], cell[c].getContents().trim());
							
							// 保存数据
							Map<String, Object> validate = ValidatorUtils.validate(entity);
							if (validate == null) {
								Map<String, Object> map = new HashMap<String, Object>();
								try {
									if (baseDao.exists(entity) > 0)
										throw new ExistsException("记录重复.");
									
									baseDao.insert(entity);
									map.put("row", s);
									map.put("state", 1);
									map.put("message", "导入成功!");
								} catch (Exception er) {
									map.put("row", s);
									map.put("state", 0);
									map.put("message", er.getMessage());
								}
								errorList.add(map);
							} else {
								Map<String, Object> map = new HashMap<String, Object>();
								map.put("row", s);
								map.put("state", 0);
								map.put("message", validate.get("validateError"));
								errorList.add(map);
							}
								
						}
					}
				}
	
			} catch (Exception e) {
				logger.error("import excel error.", e);
				throw new ServiceException(e);
			} finally {
				wb.close();
				excel.delete();
			}
		}
		
		return errorList;
	}

	/**
	 * @操作子表
	 * 查询子表所有数据
	 */
	@Override
	@SuppressWarnings("rawtypes")
	public List<TEntity<?>> selectDetail(TEntity<?> classes, String id) {
		List<TEntity<?>> list = null;
		try {
			if (! classes.getClass().isAnnotationPresent(DetailDaoRef.class)) {
				logger.error(classes.getClass() + " need to implement @DetailDaoRef annotation");
				throw new RuntimeException(classes.getClass() + " need to implement @DetailDaoRef annotation");
			}
			
			DetailDaoRef daoRef = classes.getClass().getAnnotation(DetailDaoRef.class);
		    detailDao = (DetailDao)SpringContextUtils.getBean(daoRef.DaoName());
			list = detailDao.selectAll(id);
		} catch(Exception e) {
			logger.error("selectDetailByPid error!", e);
			throw new ServiceException(e);
		}
		return list; 
	}

	/**
	 * @操作子表
	 * 保存子表所有数据
	 */
	private void saveDetail(List<TEntity<?>>[] arrayDetail, String id) {
		TEntity<?> entity = null;
		
		for (List<TEntity<?>> list : arrayDetail) {
			// 1 动态获取 DetailDao 对象
			detailDao = this.getListOneForDetailDao(list);
			if (detailDao == null)
				continue;

			// 2 获取当前子表所有记录ID, 用于最后的删除
			List<Map<String, Object>> arrayId = detailDao.selectArrayId(id);
			
			// 3 开始保存子表
			int j = 0;
			for (j = 0; j < list.size(); j ++) {
				entity = (TEntity<?>) list.get(j);
			    try {
					if (BaseUtils.isEmpty(entity.getId())) {
						GenericsUtils.setClassMethod(entity, "pid", id);
						detailDao.insert(entity);
					} else {
						removeArrayId(arrayId, entity.getId());
						detailDao.update(entity);
					}
					logger.debug(entity.getClass() + " insert or update detail #row:" + j);
				} catch (Exception e) {
					logger.error(entity.getClass() + " save detail error. #row:" + j, e);
					throw new ServiceException(e);
				}
			}
			
			// 4 删除子表多余的数据
			try {
				for (Map<String, Object> map: arrayId)
					detailDao.deleteById((String)map.get("ID"));
				logger.debug(entity.getClass() + " delete detail #row:" + j);
			} catch (Exception e) {
				logger.error(entity.getClass() + " delete detail error. #row:" + j, e);
				throw new ServiceException(e);
			}
		    
		}
	}
	
	/**
	 * @操作子表
	 * 动态获取 DetailDao 对象
	 */
	@SuppressWarnings("rawtypes")
	private DetailDao getListOneForDetailDao(List<TEntity<?>> list) {
		Object obj = null;
		for (TEntity<?> t : list) {
			if (! t.getClass().isAnnotationPresent(DetailDaoRef.class))
				throw new RuntimeException(t.getClass() + " need to implement @DetailDaoRef annotation");
			
			DetailDaoRef daoRef = t.getClass().getAnnotation(DetailDaoRef.class);
			obj = SpringContextUtils.getBean(daoRef.DaoName());
			break;
		}
		
		if (obj != null)
			return (DetailDao)obj;
		else
			return null;
	}
	
	/**
	 * @操作子表
	 * 获取当前子表所有记录ID, 用于最后的删除
	 */
	private void removeArrayId(List<Map<String, Object>> array, Object object) {
		for (int i = 0; i < array.size(); i ++) {
			Map<String, Object> map = array.get(i);
			Object temp = (Object)map.get("ID");
			if (temp != null)
				if (temp.equals(object)) {
					array.remove(i);
					break;
				}
		}
	}

}
