/**
 * author: 谢少华
 * 
 * date: 2014-06-27 16:49
 */
package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.business.system.dao.PositionDao;
import com.web.business.system.entity.PositionEntity;
import com.web.business.system.service.PositionService;

public class PositionServiceImpl extends TemplateServiceImpl
        implements PositionService { 

    private PositionDao positionDao;

    public PositionDao getPositionDao() {
        return positionDao;
    }

    public void setPositionDao(PositionDao positionDao) {
        this.positionDao = positionDao;
    }

	@Override
	public List<PositionEntity> getEntityList() {
		return positionDao.getEntityList();
	}

	@Override
	public void synchronizationMenu() {
		positionDao.synchronizationMenu();
	}

	@Override
	public boolean existsDetail(String id, String menugroupid) {
		int i = positionDao.existsDetail(id, menugroupid);
		return (i == 0);
	}

}
