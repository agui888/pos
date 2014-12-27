/**
 * author: 谢少华
 * 
 * date: 2014-06-20 15:46
 */
package com.web.business.system.service.impl;

import java.util.List;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.business.system.dao.BaseRoleDao;
import com.web.business.system.entity.BaseRoleEntity;
import com.web.business.system.service.BaseRoleService;

public class BaseRoleServiceImpl extends TemplateServiceImpl
        implements BaseRoleService { 

    private BaseRoleDao baseRoleDao;

    public BaseRoleDao getBaseRoleDao() {
        return baseRoleDao;
    }

    public void setBaseRoleDao(BaseRoleDao baseRoleDao) {
        this.baseRoleDao = baseRoleDao;
    }
    
    @Override
	public List<BaseRoleEntity> getEntityList() {
		return baseRoleDao.getEntityList();
	}

}