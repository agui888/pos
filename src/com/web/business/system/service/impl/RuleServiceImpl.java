/**
 * author: 谢少华
 * 
 * date: 2014-06-24 11:05
 */
package com.web.business.system.service.impl;

import java.util.List;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.business.system.dao.RuleDao;
import com.web.business.system.entity.RuleEntity;
import com.web.business.system.service.RuleService;

public class RuleServiceImpl extends TemplateServiceImpl
        implements RuleService { 

    private RuleDao ruleDao;

    public RuleDao getRuleDao() {
        return ruleDao;
    }

    public void setRuleDao(RuleDao ruleDao) {
        this.ruleDao = ruleDao;
    }
    
    /**
     * 获取角色
     */
    @Override
    public List<RuleEntity> getRuleList(String menuid) {
    	return ruleDao.getRuleList(menuid);
    }
    
	/**
	 * Ajax
	 * @param id
	 * @param value
	 */
    @Override
	public void setRulePower(String id, String value) {
		ruleDao.setRulePower(id, value);
		if ("0".equals(value)) {
			ruleDao.delManageRulePower(id);
			ruleDao.delUserRulePower(id);
		}
	}

	/**
	 * Ajax
	 * @param id
	 * @param value
	 */
    @Override
	public void setRuleWrite(String id, String value){
    	ruleDao.setRuleWrite(id, value);
		if ("0".equals(value)) {
			ruleDao.setManageRuleWrite(id);
			ruleDao.setUserRuleWrite(id);
		}
	}

}