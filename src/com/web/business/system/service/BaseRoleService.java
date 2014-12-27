/**
 * author: 谢少华
 * 
 * date: 2014-06-20 15:46
 */
package com.web.business.system.service;

import java.util.List;

import com.web.api.core.service.template.TemplateService;
import com.web.business.system.entity.BaseRoleEntity;

public interface BaseRoleService extends TemplateService {

	public List<BaseRoleEntity> getEntityList();
	
}