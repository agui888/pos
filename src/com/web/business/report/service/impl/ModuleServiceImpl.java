/**
 * author: 谢少华
 * 
 * date: 2014-11-29 09:36
 */
package com.web.business.report.service.impl;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.exception.ServiceException;
import com.web.api.core.utils.JsonConverter;
import com.web.business.report.dao.ModuleDao;
import com.web.business.report.service.ModuleService;

public class ModuleServiceImpl implements ModuleService {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
    private ModuleDao moduleDao;

    public ModuleDao getModuleDao() {
        return moduleDao;
    }

    public void setModuleDao(ModuleDao moduleDao) {
        this.moduleDao = moduleDao;
    }
    
    @Override
	public JSONObject list(Map<String, Object> map) {
		List<?> list = null;
		
		try {
			list = moduleDao.selectAll(map);			
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