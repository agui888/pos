/**
 * author: 谢少华
 * 
 * date: 2014-12-04 15:16
 */
package com.guime.base.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;

import com.guime.base.entity.ServerEntity;
import com.guime.base.service.ServerService;

@Menu(menuid = "5003")
public class ServerAction extends TemplateAction {

    private static final long serialVersionUID = 1L;

    public ServerAction() {
        this.setGoListJsp("/guime/base/server/form.jsp");
        this.setGoEditJsp("/guime/base/server/form.jsp");
    }

    @Autowired
    @TemplateService
    private ServerService serverService;

    @TemplateEntity
    private ServerEntity serverEntity;

    public ServerService getServerService() {
        return serverService;
    }

    public void setServerService(ServerService serverService) {
        this.serverService = serverService;
    }

    public ServerEntity getServerEntity() {
        return serverEntity;
    }

    public void setServerEntity(ServerEntity serverEntity) {
        this.serverEntity = serverEntity;
    }

}