/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.service;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.web.business.system.entity.ManagePowerEntity;
import com.web.business.system.entity.ManagePowerRuleEntity;
import com.web.business.system.entity.MenuEntity;
import com.web.business.system.entity.RuleEntity;

public interface ManagePowerService {
	
	/**
	 * ManagePowerAction 权限菜单引用方法  (zTree.js 引用的 JSON) - OK
	 * @param roleid
	 * @return
	 */
	public JSONArray getManagePowerMenuList(String path, String roleid);
	
	/**
	 * 初始化菜单数据 - OK
	 * @param ls
	 * @param roleid
	 */
	public void initMenu(List<MenuEntity> ls, String roleid);
	
	/**
	 * 初始化规则  - OK
	 * @param ls
	 * @param managepowerid
	 */
	public void initRule(List<RuleEntity> ls, String managepowerid);
	
	/**
	 * 返回规则数据 - OK
	 * @param managepowerid
	 */
	public List<Map<String, Object>> getPowerRuleList(String managepowerid);
	
	/**
	 * 返回  ManagePowerEntity 对象
	 * @param managepowerid
	 * @return
	 */
	public ManagePowerEntity getManagePowerEntity(String managepowerid);

	/**
	 * AJAX
	 * @param id
	 * @param value
	 */
	public void setIspower(String id, String value);
	
	/**
	 * AJAX
	 * @param id
	 * @param value
	 */
	public void setIswrite(String id, String value);
	
	/**
	 * AJAX
	 * @param managepowerid
	 * @param ruleid
	 * @param value
	 */
	public void setRuleChecked(String managepowerid, String ruleid, String value);
	
	/**
	 * 根据 Roleid 返回ManagePower表的数据 (此方法供UserPowerService使用)
	 * @param roleid
	 */
	public List<ManagePowerEntity> getManagePowerList(String roleid);
	
	/**
	 * 根据 ManagePower 表的id返回Rule的数据  (此方法供UserPowerService使用)
	 * @param managepowerid
	 */
	public List<ManagePowerRuleEntity> getManagePowerRuleList(String managepowerid);

}