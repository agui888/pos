/**
 * author: 谢少华
 * 
 * date: 2014-11-27 14:25
 */
package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.entity.PageEntity;
import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.JsonConverter;
import com.web.business.system.dao.LogsDao;
import com.web.business.system.entity.LogsEntity;
import com.web.business.system.service.LogsService;

public class LogsServiceImpl implements LogsService { 

    private Logger logger = LoggerFactory.getLogger(getClass());

    private LogsDao logsDao;

    public LogsDao getLogsDao() {
        return logsDao;
    }

    public void setLogsDao(LogsDao logsDao) {
        this.logsDao = logsDao;
    }
	
	/**
	 * 通用列表查询
	 */
	@Override
	public JSONObject list(Map<String, Object> map, PageEntity pageEntity) {
		int count = 0;
		List<?> list = null;
		
		try {
			count = logsDao.count(map);
			int page[] = pageEntity.getPage(count, pageEntity.getPageSize());
			list = (List<?>) logsDao.selectAll(map, new RowBounds(page[0], page[1]));
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
	 * 根据ID查找单条记录
	 */
	@Override
	public LogsEntity selectById(String id) {
		LogsEntity entity = null;
		try {
			entity = logsDao.selectById(id);
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
	public List<LogsEntity> exportExcel(Map<String, Object> map) {
		List<LogsEntity> list = null;
		
		try {
			list = (List<LogsEntity>) logsDao.selectAll(map, new RowBounds());			
		} catch(Exception e) {
			logger.error("export excel error!", e);
			throw new ServiceException(e);
		}

		return list;		
	}
	
}