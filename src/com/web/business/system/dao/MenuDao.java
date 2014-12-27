package com.web.business.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.web.api.core.dao.BaseDao;
import com.web.business.system.entity.MenuEntity;

public interface MenuDao extends BaseDao<MenuEntity, Integer> {

	/**
	 * 基本 Menu方法(提抽所有菜单数据)
	 * 
	 * @return
	 */
	public List<MenuEntity> getMenuList();
	
	/**
	 * 首页的菜单多层Level Admin
	 * 
	 * @param path
	 * @param menutype
	 * @param roleids
	 * @return
	 */
	public List<MenuEntity> getHomeMenuListAdmin(
			@Param(value = "menutype") String menutype,
			@Param(value = "roleids") String roleids);
	
	/**
	 * 首页的菜单多层Level User
	 * 
	 * @param path
	 * @param menutype
	 * @param roleids
	 * @return
	 */
	public List<MenuEntity> getHomeMenuListUser(
			@Param(value = "menutype") String menutype,
			@Param(value = "roleids") String roleids);

	/**
	 * 权限规则 Rule获取指定的菜单Entity
	 * 
	 * @param id
	 * @return
	 */
	public MenuEntity getRuleMenuEntity(@Param(value = "id") String id);

	/**
	 * 权限规则 Rule的菜单JSON加载
	 * 
	 * @param notType
	 * @return
	 */
	public List<MenuEntity> getRuleMenuList(
			@Param(value = "notType") String notType);

	/**
	 * 返回工作流菜单
	 * 
	 * @return
	 */
	public List<Map<String, Object>> getMenuGroupList();

}
