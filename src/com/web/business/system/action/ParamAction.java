/**
 * author: 谢少华
 * 
 * date: 2014-06-27 11:02
 */
package com.web.business.system.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.business.system.entity.ParamEntity;
import com.web.business.system.service.ParamService;

@Menu(menuid = "2006")
public class ParamAction extends StandardAction {

	private static final long serialVersionUID = 1L;

    @Autowired
    private ParamService paramService;

    private ParamEntity paramEntity;
    
    private String message;
    
	public ParamAction() {
		this.setGoJsp("/web/business/system/param/edit.jsp");
	}
	
    public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ParamService getParamService() {
        return paramService;
    }

    public void setParamService(ParamService paramService) {
        this.paramService = paramService;
    }

    public ParamEntity getParamEntity() {
        return paramEntity;
    }

    public void setParamEntity(ParamEntity paramEntity) {
        this.paramEntity = paramEntity;
    }

	public String enter() {
		this.setParamEntity(paramService.get());
		return SUCCESS;
	}
	
	public String save() {
		paramService.save(paramEntity);
		this.setMessage("保存成功!");
		return SUCCESS;
	}

}
