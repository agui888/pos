/**
 * author: 谢少华
 * 
 * date: 2014-11-28 15:34
 */
package com.web.business.report.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.JsonConverter;
import com.web.business.report.dao.RolemanagepowerDao;
import com.web.business.report.service.RolemanagepowerService;

public class RolemanagepowerServiceImpl implements RolemanagepowerService { 
	
	private Logger logger = LoggerFactory.getLogger(getClass());

    private RolemanagepowerDao rolemanagepowerDao;

    public RolemanagepowerDao getRolemanagepowerDao() {
        return rolemanagepowerDao;
    }

    public void setRolemanagepowerDao(RolemanagepowerDao rolemanagepowerDao) {
        this.rolemanagepowerDao = rolemanagepowerDao;
    }
    
    @Override
	public JSONObject list(Map<String, Object> map) {
		List<?> list = null;
		
		try {
			list = rolemanagepowerDao.selectAll(map);			
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