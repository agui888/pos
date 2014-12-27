package com.web.business.system.service.impl;

import java.util.List;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.business.system.dao.ManageRoleDao;
import com.web.business.system.entity.ManageRoleEntity;
import com.web.business.system.service.ManageRoleService;

public class ManageRoleServiceImpl extends TemplateServiceImpl
		implements ManageRoleService {

	private ManageRoleDao manageRoleDao;

	public ManageRoleDao getManageRoleDao() {
		return manageRoleDao;
	}

	public void setManageRoleDao(ManageRoleDao manageRoleDao) {
		this.manageRoleDao = manageRoleDao;
	}

	@Override
	public List<ManageRoleEntity> getEntityList() {
		return manageRoleDao.getEntityList();
	}
	
}
