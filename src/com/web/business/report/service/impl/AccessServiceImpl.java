/**
 * author: 谢少华
 * 
 * date: 2014-11-28 17:06
 */
package com.web.business.report.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.JsonConverter;
import com.web.business.report.dao.AccessDao;
import com.web.business.report.service.AccessService;

public class AccessServiceImpl implements AccessService { 
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	private static final long serialVersionUID = -1091412203415610202L;

    private AccessDao accessDao;

    public AccessDao getAccessDao() {
        return accessDao;
    }

    public void setAccessDao(AccessDao accessDao) {
        this.accessDao = accessDao;
    }
    
    @Override
	public JSONObject list(Map<String, Object> map) {
		List<?> list = null;
		
		try {
			list = accessDao.selectAll(map);			
		} catch(Exception e) {
			logger.error("list error!", e);
			throw new ServiceException(e);
		}

		JSONObject jsonObject = new JSONObject();
		jsonObject.accumulate("total", list.size(), JsonConverter.getJsonConfig());
		jsonObject.accumulate("rows", list, JsonConverter.getJsonConfig());

		return jsonObject;
	}

}