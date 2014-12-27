package com.web.business.system.service;

import java.util.List;
import java.util.Map;

import com.web.api.core.service.template.TemplateService;
import com.web.business.system.entity.MenuEntity;

public interface MenuService extends TemplateService {

	/**
	 * 基本 Menu方法(提抽所有菜单数据)
	 * @return
	 */
	public List<MenuEntity> getMenuList();
	
	/**
	 * 首页的菜单多层Level Admin & User
	 * @param usertype
	 * @param menutype
	 * @param roleids
	 * @return
	 */
	public List<MenuEntity> getHomeMenuList(int usertype, String menutype, String roleids);
	
	/**
	 * 权限规则 Rule获取指定的菜单Entity
	 * @param id
	 * @return
	 */
	public MenuEntity getRuleMenuEntity(String id);
	
	/**
	 * 权限规则 Rule的菜单JSON加载 
	 * @param path
	 * @param menuid
	 * @return
	 */
	public String getRuleMenuList(String path, String menuid);
	
	/**
	 * 返回工作流菜单
	 * @return
	 */
	public List<Map<String, Object>> getMenuGroupList();
	
}
