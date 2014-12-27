/**
 * author: 谢少华
 * 
 * date: 2014-06-17 16:03
 */
package com.web.business.system.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;

import com.web.business.system.entity.DictEntity;
import com.web.business.system.service.DictService;

@Menu(menuid = "2005")
public class DictAction extends TemplateAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    @TemplateService
    private DictService dictService;

    @TemplateEntity
    private DictEntity dictEntity;
    
	public DictAction() {
		this.setGoListJsp("/web/business/system/dict/form.jsp");
		this.setGoEditJsp("/web/business/system/dict/form.jsp");
	}

    public DictService getDictService() {
        return dictService;
    }

    public void setDictService(DictService dictService) {
        this.dictService = dictService;
    }

    public DictEntity getDictEntity() {
        return dictEntity;
    }

    public void setDictEntity(DictEntity dictEntity) {
        this.dictEntity = dictEntity;
    }

}