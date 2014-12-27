/**
 * author: 谢少华
 * 
 * date: 2014-12-05 13:59
 */
package com.guime.pos.service.impl;

import com.guime.pos.dao.QtdlDao;
import com.guime.pos.entity.QtdlEntity;
import com.guime.pos.service.QtdlService;
import com.web.api.core.service.template.impl.TemplateServiceImpl;

public class QtdlServiceImpl extends TemplateServiceImpl
        implements QtdlService { 

    private QtdlDao qtdlDao;

    public QtdlDao getQtdlDao() {
        return qtdlDao;
    }

    public void setQtdlDao(QtdlDao qtdlDao) {
        this.qtdlDao = qtdlDao;
    }

    /**
	 * 登录
	 * @param userid
	 * @param password
	 * @return
	 */
	public QtdlEntity login(String userid, String password) {
		QtdlEntity qtdlEntity = (QtdlEntity) qtdlDao.login(userid, password);
		return qtdlEntity;
	}
	
}