/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.web.business.system.entity.ManagePowerEntity;
import com.web.business.system.entity.ManagePowerRuleEntity;

public interface ManagePowerDao {

	/**
	 * Insert an entity
	 */
	int insert(ManagePowerEntity entity);

	/**
	 * Update an entity
	 */
	int update(ManagePowerEntity entity);
	
	/**
	 * ManagePowerAction 权限菜单引用方法 (zTree.js 引用的 JSON)
	 * 
	 * @param path
	 * @param roleid
	 * @return
	 */
	public List<Map<String, Object>> getManagePowerMenuList(
			@Param(value = "path") String path,
			@Param(value = "roleid") String roleid);

	/**
	 * 1 初始化菜单 - 先做标记
	 * 
	 * @param roleid
	 */
	public void updatePowerEntityFlag(@Param(value = "roleid") String roleid);

	/**
	 * 2 初始化菜单 - 再一条一条取出
	 * 
	 * @param roleid
	 * @param menuid
	 */
	public ManagePowerEntity getPowerEntity(
			@Param(value = "roleid") String roleid,
			@Param(value = "menuid") String menuid);

	/**
	 * 3 初始化菜单 - 删除已标记的数据
	 * 
	 * @param roleid
	 */
	public void deletePowerEntityFlag(@Param(value = "roleid") String roleid);

	/**
	 * 1 初始化规则 - 先做标记
	 * 
	 * @param managepowerid
	 */
	public void updatePowerRuleEntityFlag(
			@Param(value = "managepowerid") String managepowerid);

	/**
	 * 2 检查主表权限是否存在
	 * 
	 * @param managepowerid
	 */
	public String getPowerEntityExists(
			@Param(value = "managepowerid") String managepowerid);

	/**
	 * 2 初始化规则 - 再一条一条取出
	 * 
	 * @param managepowerid
	 * @param ruleid
	 * @return
	 */
	public ManagePowerRuleEntity getPowerRuleEntity(
			@Param(value = "managepowerid") String managepowerid,
			@Param(value = "ruleid") String ruleid);

	/**
	 * 3 初始化规则 - 删除已标记的数据
	 * 
	 * @param managepowerid
	 */
	public void deletePowerRuleEntityFlag(
			@Param(value = "managepowerid") String managepowerid);

	/**
	 * 返回表单数据 - OK
	 * 
	 * @param managepowerid
	 */
	public List<Map<String, Object>> getPowerRuleList(
			@Param(value = "managepowerid") String managepowerid);

	/**
	 * 返回 ManagePowerEntity 对象
	 * 
	 * @param managepowerid
	 */
	public ManagePowerEntity getManagePowerEntity(
			@Param(value = "managepowerid") String managepowerid);

	/**
	 * AJAX
	 * 
	 * @param id
	 * @param value
	 */
	public void setIspower(@Param(value = "id") String id,
			@Param(value = "value") String value);

	/**
	 * AJAX
	 * 
	 * @param id
	 * @param value
	 */
	public void setIswrite(@Param(value = "id") String id,
			@Param(value = "value") String value);

	/**
	 * AJAX
	 * 
	 * @param managepowerid
	 * @param ruleid
	 * @param value
	 */
	public void setRuleChecked(
			@Param(value = "managepowerid") String managepowerid,
			@Param(value = "ruleid") String ruleid,
			@Param(value = "value") String value);
	
	/**
	 * 根据 Roleid 返回 ManagePower 表的数据 (此方法供UserPowerService使用)
	 */
	public List<ManagePowerEntity> getManagePowerList(String roleid);

	/**
	 * 根据 ManagePower 表的 id 返回 Rule 的数据 (此方法供UserPowerService使用)
	 * 
	 * @param managepowerid
	 */
	public List<ManagePowerRuleEntity> getManagePowerRuleList(String managepowerid);

}