/**
 * author: 谢少华
 * 
 * date: 2014-06-24 12:18
 */
package com.web.business.system.service;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import com.web.api.core.entity.PageEntity;

public interface GridService {

	public List<Map<String, Object>> getGridWidth(String menuid, String userid);
	
	public void setGridWidth(String menuid, String gridtag, String userid, String columnname, String width);
	
	public JSONObject list(Map<String, Object> map, PageEntity pageEntity);
	
	public void truncate();
	
}