/**
 * author: 谢少华
 * 
 * date: 2014-06-24 11:05
 */
package com.web.business.system.service;

import java.util.List;

import com.web.api.core.service.template.TemplateService;
import com.web.business.system.entity.RuleEntity;

public interface RuleService extends TemplateService {

	/**
	 * 获取角色
	 * @param menuid
	 * @return
	 */
	public List<RuleEntity> getRuleList(String menuid);
	
	/**
	 * Ajax
	 * @param id
	 * @param value
	 */
	public void setRulePower(String id, String value);

	/**
	 * Ajax
	 * @param id
	 * @param value
	 */
	public void setRuleWrite(String id, String value);
	
}