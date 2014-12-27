/**
 * author: 谢少华
 * 
 * date: 2014-06-23 10:04
 */
package com.web.business.system.service;

import java.util.List;
import java.util.Map;

import com.web.api.core.service.template.TemplateService;
import com.web.business.system.entity.BaseUserEntity;

public interface BaseUserService extends TemplateService {

	/**
	 * 登录
	 * @param userid
	 * @param password
	 * @return
	 */
	public BaseUserEntity login(String userid, String password);

	/**
	 * 取出所有部门用户信息
	 * @return
	 */
	public List<Map<String, Object>> getDeptUserComboBox();

}
