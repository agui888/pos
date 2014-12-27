/**
 * author: 谢少华
 * 
 * date: 2014-06-24 11:05
 */
package com.web.business.system.action;

import java.math.BigDecimal;
import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.entity.MenuEntity;
import com.web.business.system.entity.RuleEntity;
import com.web.business.system.service.MenuService;
import com.web.business.system.service.RuleService;

@Menu(menuid="2007")
public class RuleAction extends TemplateAction {

	private static final long serialVersionUID = 1L;
	
	private static String OPERATE = "operate";
	
	private String title;
	
	private String powermenu;
	
	@Autowired
	@TemplateService
	private RuleService ruleService;
	
	@TemplateEntity
	private RuleEntity ruleEntity;	
	
	@Autowired
	private MenuService menuService;
	
	private MenuEntity menuEntity;
	
	public RuleAction() {
		this.setGoListJsp("/web/business/system/rule/index.jsp");
		this.setGoEditJsp("/web/business/system/rule/index.jsp");
	}
	
	public String getTitle() {
		try {
			return title;
			// return BaseUtils.getChar(title);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public MenuEntity getMenuEntity() {
		return menuEntity;
	}

	public void setMenuEntity(MenuEntity menuEntity) {
		this.menuEntity = menuEntity;
	}
	
	public String getPowermenu() {
		return powermenu;
	}

	public void setPowermenu(String powermenu) {
		this.powermenu = powermenu;
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
	
	public RuleEntity getRuleEntity() {
		return ruleEntity;
	}

	public void setRuleEntity(RuleEntity ruleEntity) {
		this.ruleEntity = ruleEntity;
	}
	
	/**
	 * 欢迎页
	 * @return
	 */
	public String welcome() {
		return "welcome";
	}
	
	/**
	 * 操作页
	 * @return
	 */
	public String operate() {
	    this.setMenuEntity(menuService.getRuleMenuEntity(this.getPowermenu()));
		return OPERATE;
	}
	
	/**
	 * 重写进入事件
	 * @return
	 */
	@Override
	public String enter() {
		super.enter();
		request.setAttribute("menuList", menuService.getRuleMenuList((String)session.getAttribute("path"), this.getMenuid()));
		return Constant.ENTER;
	}
	
	/**
	 * 重写列表事件
	 * @return
	 */
	@Override
	public String list() {
		BigDecimal menuid = null;
		if (BaseUtils.isNotEmpty(this.getPowermenu()))
			menuid = new BigDecimal(this.getPowermenu());
		
		if (ruleEntity == null)
			ruleEntity = new RuleEntity();
		ruleEntity.setMenuid(menuid);
		Map<String, Object> sqlParam = extendPortal.builderSearchAndOrderHashMap(ruleEntity, "id", Constant.DESC);
		JSONObject jsonObject = this.getRuleService().list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}
	
	/**
	 * 重写返回
	 */
	@Override
	public String cancel() {
		return OPERATE;
	}
	
	/**
	 * Ajax
	 */
	public void power() {
		String id = request.getParameter("id"); 
		String value = request.getParameter("value");
		ruleService.setRulePower(id, value);
	}

	/**
	 * Ajax
	 */
	public void write(){
		String id = request.getParameter("id"); 
		String value = request.getParameter("value");
		ruleService.setRuleWrite(id, value);
	}
    
}
