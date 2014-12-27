/**
 * author: 谢少华
 * 
 * date: 2014-11-29 09:36
 */
package com.web.business.report.dao;

import java.util.List;
import java.util.Map;

import com.web.business.report.entity.ModuleEntity;

public interface ModuleDao {

	List<ModuleEntity> selectAll(Map<?, ?> map);
	
}