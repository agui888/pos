/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.entity.ManagePowerEntity;
import com.web.business.system.entity.MenuEntity;
import com.web.business.system.entity.RuleEntity;
import com.web.business.system.service.ManagePowerService;
import com.web.business.system.service.MenuService;
import com.web.business.system.service.RuleService;

public class ManagePowerAction extends StandardAction {

    private static final long serialVersionUID = 1L;

    // 单个角色 ID
	private String roleid;
	
	// 权限 ID
	private String managepowerid;
	
    @Autowired
	private MenuService menuService;
	
	@Autowired
	private RuleService ruleService;
	
    @Autowired
    private ManagePowerService managePowerService;

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}

	public String getManagepowerid() {
		return managepowerid;
	}

	public void setManagepowerid(String managepowerid) {
		this.managepowerid = managepowerid;
	}

	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}

	public RuleService getRuleService() {
		return ruleService;
	}

	public void setRuleService(RuleService ruleService) {
		this.ruleService = ruleService;
	}
    
	public ManagePowerService getManagePowerService() {
        return managePowerService;
    }

    public void setManagePowerService(ManagePowerService managePowerService) {
        this.managePowerService = managePowerService;
    }

	/**
	 * Index JSP
	 * @return
	 */
	public String enter() {
		String path = (String)session.getAttribute("path");
		// 1. 取出所有系统菜单
		List<MenuEntity> lsMenu = (List<MenuEntity>)menuService.getMenuList();
		// 2. 根据角色与系统所有菜单, 进行Insert、Update、Delete角色中的菜单数据
		managePowerService.initMenu(lsMenu, this.getRoleid());
		// 3. 根据角色返回当前权限菜单
		request.setAttribute("managePowerMenuJosn", managePowerService.getManagePowerMenuList(path, this.getRoleid()));
		
		return Constant.ENTER;
	}
	
	/**
	 * List Grid JSP
	 * @return
	 */
	public String list() {
		/*初始化规则信息*/
		
		// 1. 取出当前菜单下的所有SQL规则
		List<RuleEntity> lsRule = (List<RuleEntity>)ruleService.getRuleList(getMenuid());
		// 2. 根据角色与系统所有SQL规则, 进行Insert、Update、Delete角色中的SQL规则		
		managePowerService.initRule(lsRule, this.getManagepowerid());
		// 3. 根据角色返回当前权限SQL规则
		request.setAttribute("managePowerRuleList", managePowerService.getPowerRuleList(this.getManagepowerid()));
		
		/*只读权限*/
		ManagePowerEntity mpe = managePowerService.getManagePowerEntity(this.getManagepowerid());
		if (BaseUtils.isNotNull(mpe)) {
			request.setAttribute("menuwrite", mpe.getMenuwrite());
			request.setAttribute("iswrite", mpe.getIswrite());
		}
		
		return Constant.LIST;
	}
	
	/**
	 * Ajax
	 */
	public void ispower() {
		String id = request.getParameter("id");
		String value = request.getParameter("value");
		managePowerService.setIspower(id, value);
	}
	
	/**
	 * Ajax
	 */
	public void iswrite() {
		String id = request.getParameter("id");
		String value = request.getParameter("value");
		managePowerService.setIswrite(id, value);
	}
	
	/**
	 * Ajax
	 */
	public void rulechecked() {
		String managepowerid = request.getParameter("managepowerid");
		String ruleid = request.getParameter("ruleid");
		String value = request.getParameter("value");
		managePowerService.setRuleChecked(managepowerid, ruleid, value);
	}

}