/**
 * author: 谢少华
 * 
 * date: 2014-06-27 16:49
 */
package com.web.business.system.service;

import java.util.List;

import com.web.api.core.service.template.TemplateService;
import com.web.business.system.entity.PositionEntity;

public interface PositionService extends TemplateService {
	
	/**
	 * 职称 List 获取方法
	 */
	public List<PositionEntity> getEntityList();
	
	/**
     * 同步 SYSTEM_MENU 表
     */
    public void synchronizationMenu();
    
    /**
     * 修改时,检查是否有存在
     */
    public boolean existsDetail(String id, String menugroupid);
    
}