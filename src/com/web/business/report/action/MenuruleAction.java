/**
 * author: 谢少华
 * 
 * date: 2014-11-28 11:11
 */
package com.web.business.report.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.business.report.entity.MenuruleEntity;
import com.web.business.report.service.MenuruleService;

@Menu(menuid = "2021")
public class MenuruleAction extends StandardAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    private MenuruleService menuruleService;

    private MenuruleEntity menuruleEntity;
    
    private Object listJson;
    
	public MenuruleAction() {
    	this.setGoJsp("/web/business/report/menurule/form.jsp");
    }
    
    public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}

    public MenuruleService getMenuruleService() {
        return menuruleService;
    }

    public void setMenuruleService(MenuruleService menuruleService) {
        this.menuruleService = menuruleService;
    }

    public MenuruleEntity getMenuruleEntity() {
        return menuruleEntity;
    }

    public void setMenuruleEntity(MenuruleEntity menuruleEntity) {
        this.menuruleEntity = menuruleEntity;
    }

	/**
	 * 进入事件
	 * @return
	 */
	public String enter() {
		return Constant.ENTER;
	}
	
	/**
	 * 列表事件
	 * @return
	 */
	public String list() {
		Map<String, Object> sqlParam = extendPortal.builderSearchHashMap(menuruleEntity);
		
		JSONObject jsonObject = menuruleService.list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}
	
}