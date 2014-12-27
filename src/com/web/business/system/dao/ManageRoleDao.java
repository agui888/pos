/**
 * author: 谢少华
 * 
 * date: 2014-06-23 15:48
 */
package com.web.business.system.dao;

import java.util.List;

import com.web.api.core.dao.BaseDao;
import com.web.business.system.entity.ManageRoleEntity;

public interface ManageRoleDao extends BaseDao<ManageRoleEntity, String> {

	public List<ManageRoleEntity> getEntityList();

}
