/**
 * author: 谢少华
 * 
 * date: 2014-11-28 11:11
 */
package com.web.business.report.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.JsonConverter;
import com.web.business.report.dao.MenuruleDao;
import com.web.business.report.service.MenuruleService;

public class MenuruleServiceImpl implements MenuruleService { 
	
	private Logger logger = LoggerFactory.getLogger(getClass());

    private MenuruleDao menuruleDao;

    public MenuruleDao getMenuruleDao() {
        return menuruleDao;
    }

    public void setMenuruleDao(MenuruleDao menuruleDao) {
        this.menuruleDao = menuruleDao;
    }
    
    @Override
	public JSONObject list(Map<String, Object> map) {
		List<?> list = null;
		
		try {
			list = menuruleDao.selectAll(map);			
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