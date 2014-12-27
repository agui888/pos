/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.web.business.system.entity.UserPowerEntity;
import com.web.business.system.entity.UserPowerRuleEntity;

public interface UserPowerDao {

	/**
	 * Insert an entity
	 */
	int insert(UserPowerEntity entity);

	/**
	 * Update an entity
	 */
	int update(UserPowerEntity entity);
	
	
	/**
	 * 当前登录用户访问权限
	 * 
	 * @param roleids
	 * @param menuid
	 * @return
	 */
	public Map<String, Object> accessUserPower(@Param(value = "roleids") String roleids,  
			@Param(value = "menuid") String menuid);
	
	/**
	 * 当前登录用户访问权限
	 * 
	 * @param roleids
	 * @param menuid
	 * @return
	 */
	public Map<String, Object> accessManagePower(@Param(value = "roleids") String roleids,  
			@Param(value = "menuid") String menuid);
	
	/**
	 * 读取基本用户的  RuleSQL
	 * @param roleids
	 * @param menuid
	 * @return
	 */
	public String accessUserRuleSQL(@Param(value = "roleids") String roleids,  
			@Param(value = "menuid") String menuid);
	
	/**
	 * 读取管理用户的  RuleSQL
	 * @param roleids
	 * @param menuid
	 * @return
	 */
	public String accessManageRuleSQL(@Param(value = "roleids") String roleids,  
			@Param(value = "menuid") String menuid);
	
	/**
	 * UserPowerAction 权限菜单引用方法 (zTree.js 引用的 JSON)
	 * 
	 * @param path
	 * @param roleid
	 * @return
	 */
	public List<Map<String, Object>> getUserPowerMenuList(
			@Param(value = "path") String path,
			@Param(value = "roleid") String roleid);

	/**
	 * 1 初始化菜单 - 先做标记
	 * 
	 * @param userroleid
	 */
	public void updatePowerEntityFlag(@Param(value = "userroleid") String userroleid);

	/**
	 * 2 初始化菜单 - 再一条一条取出 
	 * 
	 * @param userroleid
	 * @param menuid
	 */
	public UserPowerEntity getPowerEntity(
			@Param(value = "userroleid") String userroleid,
			@Param(value = "menuid") String menuid);

	/**
	 * 3 初始化菜单 - 删除已标记的数据 
	 * 
	 * @param userroleid
	 */
	public void deletePowerEntityFlag(@Param(value = "userroleid") String userroleid);

	/**
	 * 1 初始化规则 - 先做标记 
	 * 
	 * @param userpowerid
	 */
	public void updatePowerRuleEntityFlag(
			@Param(value = "userpowerid") String userpowerid);

	/**
	 * 2 检查主表权限是否存在 
	 * 
	 * @param userpowerid
	 */
	public String getPowerEntityExists(
			@Param(value = "userpowerid") String userpowerid);

	/**
	 * 2 初始化规则 - 再一条一条取出
	 * 
	 * @param userpowerid
	 * @param managepowerruleid2
	 * @return
	 */
	public UserPowerRuleEntity getPowerRuleEntity(
			@Param(value = "userpowerid") String userpowerid,
			@Param(value = "managepowerruleid2") String managepowerruleid2);

	/**
	 * 3 初始化规则 - 删除已标记的数据 
	 * 
	 * @param userpowerid
	 */
	public void deletePowerRuleEntityFlag(
			@Param(value = "userpowerid") String userpowerid);

	/**
	 * 返回表单数据 
	 * 
	 * @param userpowerid
	 */
	public List<Map<String, Object>> getPowerRuleList(
			@Param(value = "userpowerid") String userpowerid);

	/**
	 * 返回 UserPowerEntity 对象 OK
	 * 
	 * @param userpowerid
	 */
	public UserPowerEntity getUserPowerEntity(
			@Param(value = "userpowerid") String userpowerid);

	/**
	 * AJAX
	 * 
	 * @param id
	 * @param value
	 */
	public void setIspower2(@Param(value = "id") String id,
			@Param(value = "value") String value);

	/**
	 * AJAX
	 * 
	 * @param id
	 * @param value
	 */
	public void setIswrite2(@Param(value = "id") String id,
			@Param(value = "value") String value);

	/**
	 * AJAX
	 * @param userpowerid
	 */
	public void initRuleChecked2(@Param(value = "userpowerid") String userpowerid);
	
	/**
	 * AJAX
	 * 
	 * @param userpowerid
	 * @param ruleid
	 * @param value
	 */
	public void setRuleChecked2 (
			@Param(value = "userpowerid") String userpowerid,
			@Param(value = "ruleid") String ruleid,
			@Param(value = "value") String value);
	
}