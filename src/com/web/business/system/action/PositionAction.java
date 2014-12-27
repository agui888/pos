/**
 * author: 谢少华
 * 
 * date: 2014-06-27 16:49
 */
package com.web.business.system.action;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateDetailEntity;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.global.Constant;
import com.web.business.system.entity.PositionDetailEntity;
import com.web.business.system.entity.PositionEntity;
import com.web.business.system.service.MenuService;
import com.web.business.system.service.PositionService;

@Menu(menuid = "2002")
public class PositionAction extends TemplateAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MenuService menuService;	
	
    @Autowired
    @TemplateService
    private PositionService positionService;

    @TemplateEntity
    private PositionEntity positionEntity;
    
    @TemplateDetailEntity
    private List<PositionDetailEntity> positionDetailEntity = new ArrayList<PositionDetailEntity>();
    
	public PositionAction() {
		this.setGoListJsp("/web/business/system/position/list.jsp");
		this.setGoEditJsp("/web/business/system/position/edit.jsp");
	}
	
	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}

	public PositionService getPositionService() {
		return positionService;
	}

	public void setPositionService(PositionService positionService) {
		this.positionService = positionService;
	}

	public PositionEntity getPositionEntity() {
		return positionEntity;
	}

	public void setPositionEntity(PositionEntity positionEntity) {
		this.positionEntity = positionEntity;
	}

	public List<PositionDetailEntity> getPositionDetailEntity() {
		return positionDetailEntity;
	}

	public void setPositionDetailEntity(
			List<PositionDetailEntity> positionDetailEntity) {
		this.positionDetailEntity = positionDetailEntity;
	}
	
	/**
	 * 新建事件
	 */
	@Override
	public String append() {
		this.setGoJsp(this.getGoEditJsp());
		
		// 初始化
		positionService.synchronizationMenu();
		List<Map<String, Object>> list = menuService.getMenuGroupList();
		for (Map<String, Object> map : list) {
			PositionDetailEntity pd = new PositionDetailEntity();
			pd.setId(null);
			pd.setPid(null);
			pd.setMenugroupid((BigDecimal) map.get("MENUGROUPID"));
			pd.setMenugroupname((String) map.get("MENUGROUPNAME"));
			positionDetailEntity.add(pd);
		}

		return Constant.APPEND;
	}

	/**
	 * 修改事件
	 */
	@Override
	public String modify() {
		// 初始化
		positionService.synchronizationMenu();
		super.modify();
		
		List<Map<String, Object>> list = menuService.getMenuGroupList();
		for (Map<String, Object> map : list) {
			String menugroupid = ((BigDecimal) map.get("MENUGROUPID")).toString();
			if (positionService.existsDetail(this.getSelectid(), menugroupid)) {
				PositionDetailEntity pd = new PositionDetailEntity();
				pd.setId(null);
				pd.setPid(null);
				pd.setMenugroupid((BigDecimal) map.get("MENUGROUPID"));
				pd.setMenugroupname((String) map.get("MENUGROUPNAME"));
				positionDetailEntity.add(pd);
			}
		}

		return Constant.MODIFY;
	}
	
}