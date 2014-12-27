/**
 * author: 谢少华
 * 
 * date: 2014-06-27 11:02
 */
package com.web.business.system.service;

import com.web.business.system.entity.ParamEntity;

public interface ParamService {
	
	public void initialize();
	
	public void visits();
	
	public ParamEntity get();
	
	public void save(ParamEntity paramEntity);

}