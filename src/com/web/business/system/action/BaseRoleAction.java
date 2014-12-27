/**
 * author: 谢少华
 * 
 * date: 2014-06-20 15:46
 */
package com.web.business.system.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.global.Constant;
import com.web.business.system.entity.BaseRoleEntity;
import com.web.business.system.entity.UserEntity;
import com.web.business.system.service.BaseRoleService;

@Menu(menuid = "1002")
public class BaseRoleAction extends TemplateAction {

    private static final long serialVersionUID = 1L;
    
	public BaseRoleAction() {
		this.setGoListJsp("/web/business/system/role/base/form.jsp");
		this.setGoEditJsp("/web/business/system/role/base/form.jsp");
	}

    @Autowired
    @TemplateService
    private BaseRoleService baseRoleService;

    @TemplateEntity
    private BaseRoleEntity baseRoleEntity;
    
	@Override
	public void instance() {
		super.instance();
		UserEntity user = (UserEntity) session.getAttribute(Constant.LOGINSESSION);
    	if (baseRoleEntity == null)
    		baseRoleEntity = new BaseRoleEntity();
    	baseRoleEntity.setCreateuserid(user.getId());
	}
	
    public BaseRoleService getBaseRoleService() {
        return baseRoleService;
    }

    public void setBaseRoleService(BaseRoleService baseRoleService) {
        this.baseRoleService = baseRoleService;
    }

    public BaseRoleEntity getBaseRoleEntity() {
        return baseRoleEntity;
    }

    public void setBaseRoleEntity(BaseRoleEntity baseRoleEntity) {
        this.baseRoleEntity = baseRoleEntity;
    }
    
}