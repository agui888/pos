/**
 * author: 谢少华
 * 
 * date: 2014-12-04 09:12
 */
package com.guime.base.service;

import java.util.List;
import java.util.Map;

import com.web.api.core.service.template.TemplateService;

public interface CityService extends TemplateService {
	
	public List<Map<String, Object>> getComboBox();
	
	public String validatedParent(String modifyid, String comboboxid);
	
	public int validatedDelete(String selectid);

}