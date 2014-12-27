package com.web.api.core.logs.impl;

import com.web.api.core.logs.LogsAop;
import com.web.business.system.dao.LogsDao;
import com.web.business.system.entity.LogsEntity;

public class LogsAopImpl implements LogsAop {

	private LogsDao logsDao;

    public LogsDao getLogsDao() {
        return logsDao;
    }

    public void setLogsDao(LogsDao logsDao) {
        this.logsDao = logsDao;
    }
    
    @Override
    public void save(LogsEntity logsEntity) {
    	logsDao.insert(logsEntity);
    }
    
}
