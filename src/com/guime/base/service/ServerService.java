/**
 * author: 谢少华
 * 
 * date: 2014-12-04 15:16
 */
package com.guime.base.service;

import java.util.List;

import com.guime.base.entity.ServerEntity;
import com.web.api.core.service.template.TemplateService;

public interface ServerService extends TemplateService {

	/**
	 * 获取未用服务器的信息 
	 */
	public List<ServerEntity> getNoUseServerList(String use);
	
	
}