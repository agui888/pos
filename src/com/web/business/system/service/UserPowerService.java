/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.service;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.web.api.core.power.PowerBean;
import com.web.business.system.entity.ManagePowerEntity;
import com.web.business.system.entity.ManagePowerRuleEntity;
import com.web.business.system.entity.UserPowerEntity;

public interface UserPowerService {
	
	/**
	 * 当前登录用户访问权限
	 * @param usertype
	 * @param roleids
	 * @param menuid
	 * @return
	 */
	public PowerBean accessPower(String usertype, String roleids, String menuid);
	
	/**
	 * 读取用户的  RuleSQL
	 * @param usertype
	 * @param roleids
	 * @param menuid
	 * @return
	 */
	public String accessRuleSQL(String usertype, String roleids, String menuid);
	
	/**
	 * UserPowerAction 权限菜单引用方法  (zTree.js 引用的 JSON)
	 * @param roleid
	 * @return
	 */
	public JSONArray getUserPowerMenuList(String path, String roleid);
	
	/**
	 * 初始化菜单数据 - OK
	 * @param ls
	 * @param userroleid
	 */
	public void initMenu(List<ManagePowerEntity> ls, String userroleid);
	
	/**
	 * 初始化规则  - OK
	 * @param ls
	 * @param userpowerid
	 */
	public void initRule(List<ManagePowerRuleEntity> ls, String userpowerid);
	
	/**
	 * 返回规则数据 - OK
	 * @param userpowerid
	 */
	public List<Map<String, Object>> getPowerRuleList(String userpowerid);
	
	/**
	 * 返回  UserPowerEntity 对象
	 * @param userpowerid
	 * @return
	 */
	public UserPowerEntity getUserPowerEntity(String userpowerid);

	/**
	 * AJAX
	 * @param id
	 * @param value
	 */
	public void setIspower2(String id, String value);
	
	/**
	 * AJAX
	 * @param id
	 * @param value
	 */
	public void setIswrite2(String id, String value);
	
	/**
	 * AJAX
	 * @param userpowerid
	 * @param ruleid
	 * @param value
	 */
	public void setRuleChecked2(String userpowerid, String ruleid, String value);
	
}