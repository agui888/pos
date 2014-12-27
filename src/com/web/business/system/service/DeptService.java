/**
 * author: 谢少华
 * 
 * date: 2014-06-20 16:39
 */
package com.web.business.system.service;

import java.util.List;
import java.util.Map;

import com.web.api.core.service.template.TemplateService;

public interface DeptService extends TemplateService {
	
	public List<Map<String, Object>> getComboBox();
	
	public String validatedParent(String modifyid, String comboboxid);
	
	public int validatedDelete(String selectid);
	
}
