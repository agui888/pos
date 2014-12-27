/**
 * author: 谢少华
 * 
 * date: 2014-09-19 15:14
 */
package com.web.business.system.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.global.Constant;
import com.web.business.system.entity.MenuEntity;
import com.web.business.system.service.MenuService;

@Menu(menuid = "2011")
public class MenuAction extends TemplateAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    @TemplateService
    private MenuService menuService;

    @TemplateEntity
    private MenuEntity menuEntity;
    
	public MenuAction() {
		this.setGoListJsp("/web/business/system/menu/list.jsp");
		this.setGoEditJsp("/web/business/system/menu/edit.jsp");
	}

    public MenuService getMenuService() {
        return menuService;
    }

    public void setMenuService(MenuService menuService) {
        this.menuService = menuService;
    }

    public MenuEntity getMenuEntity() {
        return menuEntity;
    }

    public void setMenuEntity(MenuEntity menuEntity) {
        this.menuEntity = menuEntity;
    }
    
    /**
	 * 由拦截器实例化
	 */
    @Override
	public void instance() {
		super.instance();
		this.setDefaultSortOrder("id", Constant.ASC);
	}

}