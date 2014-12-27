/**
 * author: 谢少华
 * 
 * date: 2014-11-28 17:06
 */
package com.web.business.report.dao;

import java.util.List;
import java.util.Map;

import com.web.business.report.entity.MenuruleEntity;

public interface AccessDao {

	List<MenuruleEntity> selectAll(Map<?, ?> map);
	
}