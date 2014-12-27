/**
 * author: 谢少华
 * 
 * date: 2014-06-24 12:18
 */
package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.ibatis.session.RowBounds;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;
import com.web.api.core.entity.PageEntity;
import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.JsonConverter;
import com.web.business.system.dao.GridDao;
import com.web.business.system.service.GridService;

public class GridServiceImpl implements GridService {
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	private GridDao gridDao;

	public GridDao getGridDao() {
		return gridDao;
	}

	public void setGridDao(GridDao gridDao) {
		this.gridDao = gridDao;
	}
	
	@Override
	public List<Map<String, Object>> getGridWidth(String menuid, String userid) {
		return gridDao.getGridWidth(menuid, userid);
	}	

	@Override
	public void setGridWidth(String menuid, String gridtag, String userid,
			String columnname, String width) {
		String id = gridDao.exists(menuid, userid, columnname);
		if (BaseUtils.isNotEmpty(id)) {
			gridDao.update(id, width);
		} else {
			gridDao.insert(menuid, gridtag, userid, columnname, width);
		}
	}

	@Override
	public JSONObject list(Map<String, Object> map, PageEntity pageEntity) {
		int count = 0;
		List<?> list = null;
		
		try {
			count = gridDao.count(map);
			int page[] = pageEntity.getPage(count, pageEntity.getPageSize());
			list = (List<?>) gridDao.selectAll(map, new RowBounds(page[0], page[1]));			
		} catch(Exception e) {
			logger.error("list error!", e);
			throw new ServiceException(e);
		}

		JSONObject jsonObject = new JSONObject();
		jsonObject.accumulate("total", count, JsonConverter.getJsonConfig());
		jsonObject.accumulate("rows", list, JsonConverter.getJsonConfig());

		return jsonObject;
	}
	
	@Override
	public void truncate() {
		try {
			gridDao.truncate();
		} catch(Exception e) {
			logger.error("deleteById error!", e);
			throw new ServiceException(e);
		}
	}

}
