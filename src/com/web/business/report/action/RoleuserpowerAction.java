/**
 * author: 谢少华
 * 
 * date: 2014-11-28 16:43
 */
package com.web.business.report.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.global.Constant;
import com.web.business.report.entity.RoleuserpowerEntity;
import com.web.business.report.service.RoleuserpowerService;

@Menu(menuid = "2024")
public class RoleuserpowerAction extends TemplateAction {

    private static final long serialVersionUID = 1L;
    
    private Object listJson;

    @Autowired
    private RoleuserpowerService roleuserpowerService;

    private RoleuserpowerEntity roleuserpowerEntity;
    
	public RoleuserpowerAction() {
    	this.setGoJsp("/web/business/report/roleuserpower/form.jsp");
    }
	
	public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}

    public RoleuserpowerService getRoleuserpowerService() {
        return roleuserpowerService;
    }

    public void setRoleuserpowerService(RoleuserpowerService roleuserpowerService) {
        this.roleuserpowerService = roleuserpowerService;
    }

    public RoleuserpowerEntity getRoleuserpowerEntity() {
        return roleuserpowerEntity;
    }

    public void setRoleuserpowerEntity(RoleuserpowerEntity roleuserpowerEntity) {
        this.roleuserpowerEntity = roleuserpowerEntity;
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
		Map<String, Object> sqlParam = extendPortal.builderSearchHashMap(roleuserpowerEntity);
		
		JSONObject jsonObject = roleuserpowerService.list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}

}