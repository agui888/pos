/**
 * author: 谢少华
 * 
 * date: 2014-06-24 11:05
 */
package com.web.business.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.api.core.dao.BaseDao;
import com.web.business.system.entity.RuleEntity;

public interface RuleDao extends BaseDao<RuleEntity, String> {

	public List<RuleEntity> getRuleList(@Param(value = "menuid") String menuid);

	/**
	 * Ajax
	 * 
	 * @param id
	 * @param value
	 */
	public int setRulePower(@Param(value = "id") String id,
			@Param(value = "value") String value);
	
	public void delManageRulePower(@Param(value = "id") String id);
	
	public void delUserRulePower(@Param(value = "id") String id);

	/**
	 * Ajax
	 * 
	 * @param id
	 * @param value
	 */
	public int setRuleWrite(@Param(value = "id") String id,
			@Param(value = "value") String value);
	
	public void setManageRuleWrite(@Param(value = "id") String id);
	
	public void setUserRuleWrite(@Param(value = "id") String id);	
    
}