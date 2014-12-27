/**
 * author: 谢少华
 * 
 * date: 2014-11-28 14:25
 */
package com.web.business.report.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.business.report.entity.UserroleEntity;
import com.web.business.report.service.UserroleService;

@Menu(menuid = "2022")
public class UserroleAction extends StandardAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    private UserroleService userroleService;

    private UserroleEntity userroleEntity;
    
    private Object listJson;
    
	public UserroleAction() {
    	this.setGoJsp("/web/business/report/userrole/form.jsp");
    }
	
	public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}

    public UserroleService getUserroleService() {
        return userroleService;
    }

    public void setUserroleService(UserroleService userroleService) {
        this.userroleService = userroleService;
    }

    public UserroleEntity getUserroleEntity() {
        return userroleEntity;
    }

    public void setUserroleEntity(UserroleEntity userroleEntity) {
        this.userroleEntity = userroleEntity;
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
		Map<String, Object> sqlParam = extendPortal.builderSearchHashMap(userroleEntity);
		
		JSONObject jsonObject = userroleService.list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}

}