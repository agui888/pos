/**
 * author: 谢少华
 * 
 * date: 2014-06-20 15:46
 */
package com.web.business.system.dao;

import java.util.List;

import com.web.api.core.dao.BaseDao;
import com.web.business.system.entity.BaseRoleEntity;

public interface BaseRoleDao extends BaseDao<BaseRoleEntity, String> {
	
	public List<BaseRoleEntity> getEntityList();

}