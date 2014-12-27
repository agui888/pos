package com.web.api.core.action.template;

import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;
import com.web.api.core.action.extend.ExtendExcel;
import com.web.api.core.action.extend.ExtendPortal;
import com.web.api.core.action.template.annotation.TemplateDetailEntity;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.action.utils.ValidatorUtils;
import com.web.api.core.entity.PageEntity;
import com.web.api.core.entity.TEntity;
import com.web.api.core.exception.ActionException;
import com.web.api.core.exception.AjaxException;
import com.web.api.core.global.Constant;
import com.web.api.core.service.template.TemplateService;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.GenericsUtils;
import com.web.business.system.entity.UserEntity;

/**
 * 模板 Action
 * 
 * @author Tobin
 *
 */
public class TemplateAction extends ActionSupport implements 
	ServletRequestAware, ServletResponseAware {
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	private static final long serialVersionUID = 1L;
	
	private int pageSize = 20;
	
	private String defaultSort = "id";
	
	private String defaultOrder = Constant.DESC;
	
	// Bootstrap Ajax 提交方式
	private boolean ajax = false;
	
	// Menu模块唯一ID
	private String menuid;
	
	// 主表单条记录选择ID
	private String selectid;
	
	// 前端UI Grid记录Json
	private Object listJson;
	
	// 保存...的Json状态返回
	private Object resultJson;
	
	// 前端分页参数 Entity
	private PageEntity pageParam;
	
	
	// Bootstrap 跳转页面
	private String goJsp;
	
	// Bootstrap 跳转页面
	private String goListJsp;
	
	// Bootstrap 跳转页面
	private String goEditJsp;
	
	
	// 文件下载
	private InputStream outputStream;

	// 文件下载
	private String filename;
	
	// 上传文件
	private File inputFile;
	
	
	
	// 基本功能方法
	public ExtendPortal extendPortal;
	
	// Excel基本方法
	public ExtendExcel extendExcel;
	
	

	
	public HttpServletRequest request;
	
	public HttpServletResponse response;
	
	public HttpSession session;
	
	public ServletContext application;
	
	
	private List<Map<String, Object>> easyGrid;
	
	
	/**
	 * 由拦截器实例化
	 */
	public void instance() {
		extendPortal = new ExtendPortal(request, response, menuid);
		extendExcel = new ExtendExcel();
	}
	
	/**
	 * 获取  Session UserEntity
	 */
	protected UserEntity getSessionUserEntity() {
		return (UserEntity)session.getAttribute(Constant.LOGINSESSION);
	}
	
	/**
	 * 设置JSP对象
	 */
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}
	
	/**
	 * 设置JSP对象
	 */
	@Override
	public void setServletResponse(HttpServletResponse response) {  
        this.response=response;  
    }
	
	/**
	 * 获取@TemplateService
	 * @return
	 */
	public TemplateService getTemplateService() {
		Field[] fields = this.getClass().getDeclaredFields();
		for (Field field : fields) {
			if (! field.isAnnotationPresent(com.web.api.core.action.template.annotation.TemplateService.class)) 
				continue;
			String propertyName = field.getName();
			TemplateService baseService = (TemplateService)GenericsUtils.getClassMethod(this, propertyName); 
			return baseService;
		}
		return null;
	}
	
	/**
	 * 获取@TemplateEntity
	 * @return
	 */
	public Class<?> getEntityType() {
		Field[] fields = this.getClass().getDeclaredFields();
		for (Field field : fields) {
			if (! field.isAnnotationPresent(TemplateEntity.class)) 
				continue;
			Class<?> clazz = field.getType();
			return clazz;
		}
		return null;
	}
	
	/**
	 * 获取@TemplateEntity
	 * @return
	 */
	public TEntity<?> getEntityClass() {
		Field[] fields = this.getClass().getDeclaredFields();
		for (Field field : fields) {
			if (! field.isAnnotationPresent(TemplateEntity.class)) 
				continue;
			String propertyName = field.getName();
			TEntity<?> entity = (TEntity<?>)GenericsUtils.getClassMethod(this, propertyName);
			return entity;
		}
		return null;
	}
	
	/**
	 * 设置@TemplateEntity
	 * @param entity
	 */
	public void setEntity(TEntity<?> entity) {
		Field[] fields = this.getClass().getDeclaredFields();
		for (Field field : fields) {
			if (! field.isAnnotationPresent(TemplateEntity.class)) 
				continue;

			String propertyName = field.getName();
			GenericsUtils.setClassMethod(this, propertyName, entity);
		}
	}
	
	/**
	 * 获取@TemplateDetailEntity
	 */
	@SuppressWarnings("unchecked")
	public List<TEntity<?>>[] getDetailEntityClass() {
		Field[] fields = this.getClass().getDeclaredFields();

		// Array Size
		int i = 0;
		for (Field field : fields) {
			if (field.isAnnotationPresent(TemplateDetailEntity.class)) 
				i ++;
		}
		
		// Set Array
		int j = 0;
		List<TEntity<?>>[] list = new ArrayList[i];
		for (Field field : fields) {
			if (! field.isAnnotationPresent(TemplateDetailEntity.class)) 
				continue;
			String propertyName = field.getName();
			list[j] = (List<TEntity<?>>)GenericsUtils.getClassMethod(this, propertyName);
		}
		
		return list;
	}
	
	/**
	 * 设置@TemplateDetailEntity
	 * @param propertyName
	 * @param list
	 */
	public void setDetailEntity(String propertyName, List<TEntity<?>> list) {
		Field[] fields = this.getClass().getDeclaredFields();
		for (Field field : fields) {
			if (! field.isAnnotationPresent(TemplateDetailEntity.class)) 
				continue;

			if (propertyName.equals(field.getName()))
				GenericsUtils.setClassMethod(this, propertyName, list);
		}
	}
	
	public void setDefaultSortOrder(String sort, String order) {
		this.defaultSort = sort;
		this.defaultOrder = order;
	}
	
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public boolean isAjax() {
		return ajax;
	}

	public void setAjax(boolean ajax) {
		this.ajax = ajax;
	}

	public String getMenuid() {
		return menuid;
	}

	public String getSelectid() {
		return selectid;
	}

	public Object getListJson() {
		return listJson;
	}

	public Object getResultJson() {
		return resultJson;
	}

	public PageEntity getPageParam() {
		return pageParam;
	}

	public void setMenuid(String menuid) {
		this.menuid = menuid;
	}

	public void setSelectid(String selectid) {
		this.selectid = selectid;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}

	public void setResultJson(Object resultJson) {
		this.resultJson = resultJson;
	}

	public void setPageParam(PageEntity pageParam) {
		this.pageParam = pageParam;
	}
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public InputStream getOutputStream() {
		return outputStream;
	}

	public void setOutputStream(InputStream outputStream) {
		this.outputStream = outputStream;
	}
	
	public File getInputFile() {
		return inputFile;
	}

	public void setInputFile(File inputFile) {
		this.inputFile = inputFile;
	}
	
	public List<Map<String, Object>> getEasyGrid() {
		return easyGrid;
	}

	public void setEasyGrid(List<Map<String, Object>> easyGrid) {
		this.easyGrid = easyGrid;
	}
	
	public String getGoJsp() {
		return goJsp;
	}

	public void setGoJsp(String goJsp) {
		if (BaseUtils.isNotEmpty(goJsp))
			this.goJsp = goJsp;
	}
	
	public String getGoListJsp() {
		return goListJsp;
	}

	public void setGoListJsp(String goListJsp) {
		this.goListJsp = goListJsp;
	}

	public String getGoEditJsp() {
		return goEditJsp;
	}

	public void setGoEditJsp(String goEditJsp) {
		this.goEditJsp = goEditJsp;
	}
	
	/**
	 * 进入事件
	 * @return
	 */
	public String enter() {
		this.setGoJsp(goListJsp);
		
		extendPortal.removeSessionParameter();
		return Constant.ENTER;
	}
	
	/**
	 * 列表事件
	 * @return
	 */
	public String list() {
		Map<String, Object> sqlParam = extendPortal.builderSearchAndOrderHashMap(this.getEntityClass(), this.defaultSort, this.defaultOrder);
		PageEntity pageEntity = extendPortal.getSessionPage(pageSize);
		
		JSONObject jsonObject = this.getTemplateService().list(sqlParam, pageEntity);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}
	
	/**
	 * 新建事件
	 * @return
	 */
	public String append() {
		this.setGoJsp(goEditJsp);
		
		return Constant.APPEND;
	}

	/**
	 * 修改事件
	 * @return
	 */
	public String modify() {
		this.setGoJsp(goEditJsp);
		this.view();
		
		return Constant.MODIFY;
	}
	
	/**
	 * 浏览事件
	 * @return
	 */
	public String view() {
		this.setGoJsp(goEditJsp);
		
		// Read Master Table
		this.setEntity(this.getTemplateService().selectById(this.getSelectid()));
		
		// Read Detail Table
		Field[] fields = this.getClass().getDeclaredFields();
		for (Field field : fields) {
			if (! field.isAnnotationPresent(TemplateDetailEntity.class)) 
				continue;
			
			Class<?> classes = GenericsUtils.getFieldGenericType(field, 0);
			TEntity<?> entity = null; 
			try {
				entity = (TEntity<?>)classes.newInstance();
			} catch (Exception e) {
				logger.error(classes + " newInstance error!");
				throw new ActionException(e);
			}

			String propertyName = field.getName();
			List<TEntity<?>> list = this.getTemplateService().selectDetail(entity, this.getSelectid());
			this.setDetailEntity(propertyName, list);
		}
		
		return Constant.VIEW;
	}
	
	/**
	 * Ajax 校验
	 * @return
	 */
	public String validated() {
		String name = request.getParameter("name");
		String value = request.getParameter("param");
		String idValue = request.getParameter("idValue");
		name = name.substring(name.indexOf(".") + 1);
		
		boolean rs = this.getTemplateService().validated(name, value, idValue);

		JSONObject jsonObject = new JSONObject();
		if (rs) {
			jsonObject.accumulate("info", "当前[" + value + "]已存在,请更换!");
			jsonObject.accumulate("status", "n");
		} else {
			jsonObject.accumulate("info", "验证通过!");
			jsonObject.accumulate("status", "y");
		}
		this.setResultJson(jsonObject);
		
		return Constant.VALIDATED;
	}
	
	/**
	 * 保存事件
	 * @return
	 */
	public String save() {
		this.setGoJsp(goEditJsp);
		String ajaxInfo = "<h4 class='alert-heading'><span class='glyphicon glyphicon-exclamation-sign'></span> 保存失败</h4>";

		/** Hibernate Validator **/
		Map<String, Object> map = ValidatorUtils.validate(this.getEntityClass());

		/** (Ajax & Post) Save Database **/
		if (ajax) {
			JSONObject jsonObject = new JSONObject();

			/** Validate **/
			if (map != null) {
				jsonObject.accumulate("info", ajaxInfo + "<p>&nbsp;&nbsp;" + ActionUtils.addValidateError(map) + "</p>");
				jsonObject.accumulate("status", "n");
				jsonObject.accumulate("selectid", "");
				
				this.setResultJson(jsonObject);
				return Constant.VALIDATED;
			}
			
			/** Ajax Save **/
			try {
				String id = this.getTemplateService().save(this.getEntityClass(), this.getDetailEntityClass());
				if (id != null) {
					jsonObject.accumulate("info", "保存成功!");
					jsonObject.accumulate("status", "y");
					jsonObject.accumulate("selectid", id);
				} else {
					jsonObject.accumulate("info", "影响数据库0行，,保存失败!");
					jsonObject.accumulate("status", "n");
					jsonObject.accumulate("selectid", "");
				}
			} catch (Exception e) {
				jsonObject.accumulate("info", ajaxInfo + "<p>&nbsp;&nbsp;" + e.getMessage() + "</p>");
				jsonObject.accumulate("status", "n");
				jsonObject.accumulate("selectid", "");
			}
			
			this.setResultJson(jsonObject);
			return Constant.SAVEAJAX;
		} else {
			/** Validate **/
			if (map != null) {
				request.setAttribute("method", Constant.MODIFY);
				
				ActionUtils.addValidateError(this, map);
				return Constant.CHECKFORM;
			}
			
			/** Post Save **/
			String id = this.getTemplateService().save(this.getEntityClass(), this.getDetailEntityClass());
			if (id == null) {
				throw new ActionException("影响数据库0行，,保存失败!");
			}
			
			String gotoAction = request.getParameter("gotoAction");
			return gotoAction;
		}
	}
	
	/**
	 * 返回
	 * @return
	 */
	public String cancel() {
		this.setGoJsp(goListJsp);
		
		return Constant.ENTER;
	}
	
	/**
	 * 物理删除
	 * @return
	 */
	public String delete() {
		this.setGoJsp(goListJsp);
		
		try {
			this.setResultJson(this.getTemplateService().deleteById(this.getSelectid()));			
		} catch (Exception e) {
			throw new AjaxException(e);
		}
		return Constant.ENTER;
	}
	
	/**
	 * 标记删除
	 * @return
	 */
	public String remove() {
		this.setGoJsp(goListJsp);
		
		this.setResultJson(this.getTemplateService().removeById(this.getSelectid()));
		return Constant.ENTER;
	}
	
	/**
	 * 普通查询
	 * @return
	 */
	public String search() {
		extendPortal.removeSessionParameter();
		
		Map<String, Object> entityMap = ActionUtils.converterMapEntity(this.getEntityClass());
		extendPortal.setSessionSearch(entityMap);
		return this.list();
	}
	
	/**
	 * 分页事件
	 * @return
	 */
	public String page() {
		extendPortal.setSessionPage(getPageParam());
		return this.list();
	}
	
	/**
	 * 导出
	 * @return
	 */
	public String exportexcel() throws Exception {
		response.reset();
		response.setContentType("application/vn.ms-excel");
		response.setCharacterEncoding("utf-8");
		
		Map<String, Object> sqlParam = extendPortal.builderSearchAndOrderHashMap(this.getEntityClass(), "id", Constant.DESC);
		List<TEntity<?>> list = this.getTemplateService().exportExcel(sqlParam);
		
		InputStream stream = extendExcel.exportExcel(list, (TEntity<?>)this.getEntityType().newInstance());
		if (stream != null) {
			this.setOutputStream(stream);
			this.setFilename("Excel.xls");
			return Constant.EXPORTEXCEL;
		}
		
	    return null;
	}
	
	/**
	 * 导入
	 * @return
	 * @throws  
	 * @throws Exception 
	 */
	public String importexcel() throws Exception {
		String sessionId = session.getId();
		String step = request.getParameter("step");
		request.setAttribute("step", step);
		
		if (step.equals("1")) { 
			logger.info("Step" + step + ": Upload a Excel file.");
			
		} else if (step.equals("2")) { 
			logger.info("Step" + step + ": Choose excel corresponding column.");
			
			if (this.getInputFile() != null) {
				extendExcel.importExcelCache(this.getInputFile(), sessionId);
				List<Map<String, String>> column = extendExcel.importColumnCells((TEntity<?>)this.getEntityType().newInstance());
				List<Map<String, String>> cells = extendExcel.importExcelCells(sessionId);
				
				request.setAttribute("column", column);
				request.setAttribute("cells", cells);
			}
		} else if (step.equals("3")) {
			logger.info("Step" + step + ": Import data.");
			
			String column[] = request.getParameterValues("column");
			String cells[] = request.getParameterValues("cells");
			
			List<Map<String, Object>> errorList = this.getTemplateService().importExcel((TEntity<?>)this.getEntityType().newInstance(), sessionId, column, cells);
			request.setAttribute("error", errorList); // 错误列表
		}
		
		return Constant.IMPORTEXCEL;
	}
	
}
