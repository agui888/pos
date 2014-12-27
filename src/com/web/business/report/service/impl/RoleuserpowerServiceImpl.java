/**
 * author: 谢少华
 * 
 * date: 2014-11-28 16:43
 */
package com.web.business.report.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.JsonConverter;
import com.web.business.report.dao.RoleuserpowerDao;
import com.web.business.report.service.RoleuserpowerService;

public class RoleuserpowerServiceImpl implements RoleuserpowerService { 
	
	private Logger logger = LoggerFactory.getLogger(getClass());

    private RoleuserpowerDao roleuserpowerDao;

    public RoleuserpowerDao getRoleuserpowerDao() {
        return roleuserpowerDao;
    }

    public void setRoleuserpowerDao(RoleuserpowerDao roleuserpowerDao) {
        this.roleuserpowerDao = roleuserpowerDao;
    }
    
    @Override
	public JSONObject list(Map<String, Object> map) {
		List<?> list = null;
		
		try {
			list = roleuserpowerDao.selectAll(map);			
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