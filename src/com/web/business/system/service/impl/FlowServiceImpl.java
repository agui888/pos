/**
 * author: 谢少华
 * 
 * date: 2014-07-01 09:46
 */
package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.business.system.dao.FlowDao;
import com.web.business.system.service.FlowService;

public class FlowServiceImpl extends TemplateServiceImpl
        implements FlowService { 

    private FlowDao flowDao;

    public FlowDao getFlowDao() {
        return flowDao;
    }

    public void setFlowDao(FlowDao flowDao) {
        this.flowDao = flowDao;
    }
    
	@Override
	public List<Map<String, Object>> getComboList() {
		return flowDao.getComboList();
	}

	@Override
	public void synchronizationMenu() {
		flowDao.synchronizationMenu();
	}

	@Override
	public boolean existsDetail(String id, String menugroupid) {
		int i = flowDao.existsDetail(id, menugroupid);
		return (i == 0);
	}

}