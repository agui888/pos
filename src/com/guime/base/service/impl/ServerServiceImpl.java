/**
 * author: 谢少华
 * 
 * date: 2014-12-04 15:16
 */
package com.guime.base.service.impl;

import java.util.List;

import com.guime.base.dao.ServerDao;
import com.guime.base.entity.ServerEntity;
import com.guime.base.service.ServerService;
import com.web.api.core.service.template.impl.TemplateServiceImpl;

public class ServerServiceImpl extends TemplateServiceImpl
        implements ServerService { 

    private ServerDao serverDao;

    public ServerDao getServerDao() {
        return serverDao;
    }

    public void setServerDao(ServerDao serverDao) {
        this.serverDao = serverDao;
    }

	@Override
	public List<ServerEntity> getNoUseServerList(String use) {
		return this.getServerDao().getNoUseServerList(use);
	}

}