package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.dao.MenuDao;
import com.web.business.system.entity.MenuEntity;
import com.web.business.system.service.MenuService;

public class MenuServiceImpl extends TemplateServiceImpl 
	implements MenuService {

	private Logger logger = LoggerFactory.getLogger(getClass());
		
	private MenuDao menuDao;
	
	public MenuDao getMenuDao() {
		return menuDao;
	}

	public void setMenuDao(MenuDao menuDao) {
		this.menuDao = menuDao;
	}

	@Override
	public List<MenuEntity> getMenuList() {
		List<MenuEntity> ls = menuDao.getMenuList();
		logger.debug("getMenuList 查询成功!");
		return ls;
	}

	@Override
	public List<MenuEntity> getHomeMenuList(int usertype, String menutype, String roleids) {
		List<MenuEntity> ls = null;
		String menutype_ = BaseUtils.arrayToSqlIn(menutype);
		String roleids_ = BaseUtils.arrayToSqlIn(roleids);
		if (usertype == 0)
			ls = (List<MenuEntity>)menuDao.getHomeMenuListUser(menutype_, roleids_);	
		else
			ls = (List<MenuEntity>)menuDao.getHomeMenuListAdmin(menutype_, roleids_);
		logger.debug("getHomeMenuList 多层菜单查询成功!");
		return ls;
	}

	@Override
	public MenuEntity getRuleMenuEntity(String id) {
		MenuEntity me = menuDao.getRuleMenuEntity(id);
		logger.debug("getRuleMenuEntity 查询成功!");
		return me;
	}

	@Override
	public String getRuleMenuList(String path, String menuid) {
		List<MenuEntity> ls = (List<MenuEntity>) menuDao.getRuleMenuList("'ADMIN'");
		logger.debug("getRuleMenuList 查询成功!");

		// 生成Json字符串对象
		StringBuffer sbf = new StringBuffer(100);
		sbf.append("[");
		for (int i = 0; i < ls.size(); i++) {
			MenuEntity me = (MenuEntity)ls.get(i);
			String urlString = "";
			if (BaseUtils.isNotEmpty(me.getUrl()))
				urlString = ", url:\""+path+"/system/rule_operate.action?menuid="+menuid+"&selectid="+me.getId()+"&powermenu="+me.getId()+"&title="+me.getMenu()+"\", target: \"tableIframe\"";
			else
				urlString = ", url:\""+path+"/system/rule_welcome.action\", target: \"tableIframe\"";
			if (i != ls.size() - 1) 
				sbf.append("{id:" + me.getId() + ", pId:" + me.getSid() + ", name:\"" + me.getMenu() + "\", open:true, icon:\"\\" + path + me.getIco() + "\" " + urlString + "},");
			else
				sbf.append("{id:" + me.getId() + ", pId:" + me.getSid() + ", name:\"" + me.getMenu() + "\", open:true, icon:\"\\" + path + me.getIco() + "\" " + urlString + "}");
		}
		sbf.append("]");
		
		return sbf.toString();
	}

	@Override
	public List<Map<String, Object>> getMenuGroupList() {
		List<Map<String, Object>> ls = menuDao.getMenuGroupList();
		logger.debug("getMenuGroupList 查询成功!");
		return ls;				
	}

}
