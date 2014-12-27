/**
 * author: 谢少华
 * 
 * date: 2014-11-28 14:25
 */
package com.web.business.report.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.JsonConverter;
import com.web.business.report.dao.UserroleDao;
import com.web.business.report.service.UserroleService;

public class UserroleServiceImpl implements UserroleService { 

	private Logger logger = LoggerFactory.getLogger(getClass());
	
    private UserroleDao userroleDao;

    public UserroleDao getUserroleDao() {
        return userroleDao;
    }

    public void setUserroleDao(UserroleDao userroleDao) {
        this.userroleDao = userroleDao;
    }
    
    @Override
	public JSONObject list(Map<String, Object> map) {
		List<?> list = null;
		
		try {
			list = userroleDao.selectAll(map);			
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