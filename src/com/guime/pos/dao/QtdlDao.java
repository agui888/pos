/**
 * author: 谢少华
 * 
 * date: 2014-12-05 13:59
 */
package com.guime.pos.dao;

import org.apache.ibatis.annotations.Param;

import com.guime.pos.entity.QtdlEntity;
import com.web.api.core.dao.BaseDao;

public interface QtdlDao extends BaseDao<QtdlEntity, String> {
	
	/**
	 * 登录
	 * @param userid
	 * @return
	 */
	public QtdlEntity login(@Param(value="userid") String userid, 
			@Param(value="password") String password);

}