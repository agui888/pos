/**
 * author: 谢少华
 * 
 * date: 2014-06-27 11:02
 */
package com.web.business.system.service.impl;

import com.web.business.system.dao.ParamDao;
import com.web.business.system.entity.ParamEntity;
import com.web.business.system.service.ParamService;

public class ParamServiceImpl implements ParamService {

    private ParamDao paramDao;

    public ParamDao getParamDao() {
        return paramDao;
    }

    public void setParamDao(ParamDao paramDao) {
        this.paramDao = paramDao;
    }
	
	/**
	 * 初始化
	 */
	@Override
	public void initialize() {
		int i = paramDao.exists();
		if (i == 0)
			paramDao.initialize();
	}
	
	/**
	 * 系统访问记数器
	 */
	@Override
	public void visits() {
		this.initialize();
		paramDao.visits();
	}

	/**
	 * 返回系统参数
	 * @return
	 */
	@Override
	public ParamEntity get() {
		return paramDao.get();
	}
	
	/**
	 * 保存
	 */
	@Override
	public void save(ParamEntity paramEntity) {
		paramDao.save(paramEntity);
	}

}
