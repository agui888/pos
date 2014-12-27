/**
 * author: 谢少华
 * 
 * date: 2014-11-28 15:34
 */
package com.web.business.report.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.business.report.entity.RolemanagepowerEntity;
import com.web.business.report.service.RolemanagepowerService;

@Menu(menuid = "2023")
public class RolemanagepowerAction extends StandardAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    private RolemanagepowerService rolemanagepowerService;

    private RolemanagepowerEntity rolemanagepowerEntity;
    
    private Object listJson;
    
	public RolemanagepowerAction() {
    	this.setGoJsp("/web/business/report/rolemanagepower/form.jsp");
    }
    
	public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}

    public RolemanagepowerService getRolemanagepowerService() {
        return rolemanagepowerService;
    }

    public void setRolemanagepowerService(RolemanagepowerService rolemanagepowerService) {
        this.rolemanagepowerService = rolemanagepowerService;
    }

    public RolemanagepowerEntity getRolemanagepowerEntity() {
        return rolemanagepowerEntity;
    }

    public void setRolemanagepowerEntity(RolemanagepowerEntity rolemanagepowerEntity) {
        this.rolemanagepowerEntity = rolemanagepowerEntity;
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
		Map<String, Object> sqlParam = extendPortal.builderSearchHashMap(rolemanagepowerEntity);
		
		JSONObject jsonObject = rolemanagepowerService.list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}

}