/**
 * author: 谢少华
 * 
 * date: 2014-06-23 10:04
 */
package com.web.business.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.web.api.core.dao.BaseDao;
import com.web.business.system.entity.BaseUserEntity;

public interface BaseUserDao extends BaseDao<BaseUserEntity, String> {

	/**
	 * 登录
	 * @param userid
	 * @return
	 */
	public BaseUserEntity login(@Param(value="userid") String userid);
	
	/**
	 * 取出所有部门用户信息
	 * @return
	 */
	public List<Map<String, Object>> getDeptUserComboBox();
	
}
