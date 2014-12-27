/**
 * author: 谢少华
 * 
 * date: 2014-12-05 16:32
 */
package com.guime.base.service;

import java.util.List;

import com.guime.base.entity.StoreEntity;
import com.web.api.core.service.template.TemplateService;

public interface StoreService extends TemplateService {

	public String saveing(StoreEntity storeEntity);
	
	public List<StoreEntity> getDynamicList();
	
}