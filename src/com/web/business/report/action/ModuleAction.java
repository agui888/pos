/**
 * author: 谢少华
 * 
 * date: 2014-11-29 09:36
 */
package com.web.business.report.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.business.report.entity.ModuleEntity;
import com.web.business.report.service.ModuleService;

@Menu(menuid = "1012,2032")
public class ModuleAction extends StandardAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    private ModuleService moduleService;

    private ModuleEntity moduleEntity;
    
    private Object listJson;
    
	public ModuleAction() {
    	this.setGoJsp("/web/business/report/module/form.jsp");
    }

    public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}
	
    public ModuleService getModuleService() {
        return moduleService;
    }

    public void setModuleService(ModuleService moduleService) {
        this.moduleService = moduleService;
    }

    public ModuleEntity getModuleEntity() {
        return moduleEntity;
    }

    public void setModuleEntity(ModuleEntity moduleEntity) {
        this.moduleEntity = moduleEntity;
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
   		Map<String, Object> sqlParam = extendPortal.builderSearchHashMap(moduleEntity);
   		
   		JSONObject jsonObject = moduleService.list(sqlParam);
   		this.setListJson(jsonObject);
   		return Constant.LIST;
   	}
}