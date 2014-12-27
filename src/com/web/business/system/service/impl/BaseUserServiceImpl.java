/**
 * author: 谢少华
 * 
 * date: 2014-06-23 10:04
 */
package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;
import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.dao.BaseUserDao;
import com.web.business.system.entity.BaseUserEntity;
import com.web.business.system.service.BaseUserService;

public class BaseUserServiceImpl extends TemplateServiceImpl
        implements BaseUserService {
        
    private Logger logger = LoggerFactory.getLogger(getClass()); 

    private BaseUserDao baseUserDao;

    public BaseUserDao getBaseUserDao() {
        return baseUserDao;
    }

    public void setBaseUserDao(BaseUserDao baseUserDao) {
        this.baseUserDao = baseUserDao;
    }

	@Override
	public BaseUserEntity login(String userid, String password) {
		BaseUserEntity baseUserEntity = (BaseUserEntity) baseUserDao.login(userid);

		if (baseUserEntity == null) {
			baseUserEntity = new BaseUserEntity();
			baseUserEntity.setMessage(userid + " 帐号不存在.请检查!");
			logger.debug(baseUserEntity.getMessage());
		} else {
			if (!BaseUtils.getMD5Str(baseUserEntity.getUserid() + password).equals(baseUserEntity.getPassword())) {
				BaseUserEntity errorEntity = new BaseUserEntity();
				errorEntity.setMessage("密码错误!请重试.");
				logger.debug(baseUserEntity.getMessage());
				return errorEntity;
			}
		}

		return baseUserEntity;
	}

	@Override
	public List<Map<String, Object>> getDeptUserComboBox() {
		return baseUserDao.getDeptUserComboBox();
	}

}
