/**
 * author: 谢少华
 * 
 * date: 2014-12-05 13:59
 */
package com.guime.pos.action;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.guime.pos.entity.QtdlEntity;
import com.guime.pos.service.QtdlService;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.JsonConverter;

public class QtdlAction extends TemplateAction {

    private static final long serialVersionUID = 1L;
    
    private static final String AJAXLOGIN = "login";

    @Autowired
    @TemplateService
    private QtdlService qtdlService;

    @TemplateEntity
    private QtdlEntity qtdlEntity;
    
    private String storeid;
    
    private Object ajaxLogin;
    
	public QtdlAction() {
        this.setGoListJsp("/guime/pos/qtdl/list.jsp");
        this.setGoEditJsp("/guime/pos/qtdl/edit.jsp");
    }
    
	public String getStoreid() {
		return storeid;
	}

	public void setStoreid(String storeid) {
		this.storeid = storeid;
	}

    @Override
	public void instance() {
		super.instance();
		this.setDefaultSortOrder("skyid", Constant.ASC);
	}
    
    public QtdlService getQtdlService() {
        return qtdlService;
    }

    public void setQtdlService(QtdlService qtdlService) {
        this.qtdlService = qtdlService;
    }

    public QtdlEntity getQtdlEntity() {
        return qtdlEntity;
    }

    public void setQtdlEntity(QtdlEntity qtdlEntity) {
        this.qtdlEntity = qtdlEntity;
    }
    
    public Object getAjaxLogin() {
		return ajaxLogin;
	}

	public void setAjaxLogin(Object ajaxLogin) {
		this.ajaxLogin = ajaxLogin;
	}
    
    /**
	 * C# 系统登录入口
	 * @return
	 */
	public String login() {
		QtdlEntity user = null;
		String message = "";
		try {
			user = qtdlService.login(qtdlEntity.getSkyid(), qtdlEntity.getPassword());
		} catch(Exception e) {
			message = "LOGIN ERROR:" + e.getMessage();
		}
		
		JSONObject jsonObject = new JSONObject();
		if (user == null) {
			jsonObject.accumulate("info", "登录失败 ERROR!");
			jsonObject.accumulate("status", "n");
			jsonObject.accumulate("message", message);
			jsonObject.accumulate("user", ""); 
		} else {
			jsonObject.accumulate("info", "登录成功!");
			jsonObject.accumulate("status", "y");
			jsonObject.accumulate("message", message);
			jsonObject.accumulate("user", user, JsonConverter.getJsonConfig());
		}
		
		this.setAjaxLogin(jsonObject);
		return AJAXLOGIN;
	}

}