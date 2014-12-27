/**
 * author: 谢少华
 * 
 * date: 2014-11-28 17:06
 */
package com.web.business.report.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.business.report.entity.AccessEntity;
import com.web.business.report.service.AccessService;

@Menu(menuid = "2031,1011")
public class AccessAction extends StandardAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    private AccessService accessService;

    private AccessEntity accessEntity;

    private Object listJson;
    
	public AccessAction() {
    	this.setGoJsp("/web/business/report/access/form.jsp");
    }
    
    public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}
	
    public AccessService getAccessService() {
        return accessService;
    }

    public void setAccessService(AccessService accessService) {
        this.accessService = accessService;
    }

    public AccessEntity getAccessEntity() {
        return accessEntity;
    }

    public void setAccessEntity(AccessEntity accessEntity) {
        this.accessEntity = accessEntity;
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
		Map<String, Object> sqlParam = extendPortal.builderSearchHashMap(accessEntity);
		
		JSONObject jsonObject = accessService.list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}

}