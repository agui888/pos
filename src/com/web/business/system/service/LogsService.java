/**
 * author: 谢少华
 * 
 * date: 2014-11-27 14:25
 */
package com.web.business.system.service;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import com.web.api.core.entity.PageEntity;
import com.web.business.system.entity.LogsEntity;

public interface LogsService {
	
	/**
	 * Display All List
	 */
	public JSONObject list(Map<String, Object> map, PageEntity pageEntity);
	
	/**
	 * Find an entity by its identifier, or <code>null</code> if not found
	 */
	LogsEntity selectById(String id);
	
	/**
	 * Export Excel
	 */
	public List<LogsEntity> exportExcel(Map<String, Object> map);
	

}