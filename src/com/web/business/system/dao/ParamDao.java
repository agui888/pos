/**
 * author: 谢少华
 * 
 * date: 2014-06-27 11:02
 */
package com.web.business.system.dao;

import com.web.business.system.entity.ParamEntity;

public interface ParamDao {
	
	public int exists();
	
	public void initialize();
	
	public void visits();
	
	public ParamEntity get();
	
	public void save(ParamEntity paramEntity);
	
}
