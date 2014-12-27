/**
 * author: 谢少华
 * 
 * date: 2014-12-05 13:59
 */
package com.guime.pos.service;

import com.guime.pos.entity.QtdlEntity;
import com.web.api.core.service.template.TemplateService;

public interface QtdlService extends TemplateService {
	
	/**
	 * 登录
	 * @param userid
	 * @param password
	 * @return
	 */
	public QtdlEntity login(String userid, String password);

}