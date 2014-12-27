/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.service.impl;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.web.api.core.utils.BaseUtils;
import com.web.business.system.dao.ManagePowerDao;
import com.web.business.system.dao.ManagePowerRuleDao;
import com.web.business.system.entity.ManagePowerEntity;
import com.web.business.system.entity.ManagePowerRuleEntity;
import com.web.business.system.entity.MenuEntity;
import com.web.business.system.entity.RuleEntity;
import com.web.business.system.service.ManagePowerService;

public class ManagePowerServiceImpl implements ManagePowerService { 

    private ManagePowerDao managePowerDao;
    
    private ManagePowerRuleDao managePowerRuleDao;
    
	public ManagePowerDao getManagePowerDao() {
        return managePowerDao;
    }

    public void setManagePowerDao(ManagePowerDao managePowerDao) {
        this.managePowerDao = managePowerDao;
    }
    
    public ManagePowerRuleDao getManagePowerRuleDao() {
		return managePowerRuleDao;
	}

	public void setManagePowerRuleDao(ManagePowerRuleDao managePowerRuleDao) {
		this.managePowerRuleDao = managePowerRuleDao;
	}
	
	/**
	 * ManagePowerAction 权限菜单引用方法  (zTree.js 引用的 JSON) - OK
	 */
	@Override
	public JSONArray getManagePowerMenuList(String path, String roleid) {
		List<Map<String, Object>> ls = managePowerDao.getManagePowerMenuList(path, roleid);
		JSONArray jsonArray = JSONArray.fromObject(ls);   
		return jsonArray;
	}

    /**
	 * 初始化菜单数据 - OK
	 * @param ls
	 * @param roleid
	 */
    @Override 
	public void initMenu(List<MenuEntity> ls, String roleid) {
    	managePowerDao.updatePowerEntityFlag(roleid);
		
		for (MenuEntity me: ls) {
			if (me.getPower().intValue() == 1) {
				ManagePowerEntity pe = managePowerDao.getPowerEntity(roleid, me.getId().toString());
				if (BaseUtils.isNull(pe)) {
					pe = new ManagePowerEntity();
					pe.setRoleid(roleid);
					pe.setMenuid(me.getId());
					pe.setIspower(new BigDecimal(1));
					pe.setMenuwrite(me.getWrite());
					pe.setIswrite(me.getWrite());
					pe.setFlag(new BigDecimal(0));
					managePowerDao.insert(pe);
				} else {
					pe.setMenuwrite(me.getWrite());
					pe.setFlag(new BigDecimal(0));
					managePowerDao.update(pe);
				}				
			}
		}
		
		managePowerDao.deletePowerEntityFlag(roleid);
	}
	
	/**
	 * 初始化规则  - OK
	 * @param ls
	 * @param managepowerid
	 */
	public void initRule(List<RuleEntity> ls, String managepowerid) {
		managePowerDao.updatePowerRuleEntityFlag(managepowerid);
		
		if (BaseUtils.isNotNull(managePowerDao.getPowerEntityExists(managepowerid)))
			for (RuleEntity re: ls) {
				ManagePowerRuleEntity pre = managePowerDao.getPowerRuleEntity(managepowerid, re.getId());
				if (BaseUtils.isNull(pre)) {
					pre = new ManagePowerRuleEntity();
					pre.setManagepowerid(managepowerid);
					pre.setRuleid(re.getId());
					pre.setChecked(new BigDecimal(0));
					pre.setFlag(new BigDecimal(0));
					managePowerRuleDao.insert(pre); 
				} else {
					pre.setFlag(new BigDecimal(0));
					managePowerRuleDao.update(pre); 
				}				
			}
		
		managePowerDao.deletePowerRuleEntityFlag(managepowerid);
	}
	
	/**
	 * 返回规则数据 - OK
	 * @param managepowerid
	 * @return
	 */
	public List<Map<String, Object>> getPowerRuleList(String managepowerid) {
		return managePowerDao.getPowerRuleList(managepowerid);
	}
	
	/**
	 * 返回  ManagePowerEntity 对象
	 * @param managepowerid
	 * @return
	 */
	public ManagePowerEntity getManagePowerEntity(String managepowerid) {
		return managePowerDao.getManagePowerEntity(managepowerid);
	}

	/**
	 * AJAX - OK
	 * @param id
	 * @param value
	 */
	public void setIspower(String id, String value) {
		managePowerDao.setIspower(id, value);
	}
	
	/**
	 * AJAX - OK
	 * @param id
	 * @param value
	 */
	public void setIswrite(String id, String value) {
		managePowerDao.setIswrite(id, value);
	}
	
	/**
	 * AJAX - OK
	 * @param managepowerid
	 * @param ruleid
	 * @param value
	 */
	public void setRuleChecked(String managepowerid, String ruleid, String value) {
		managePowerDao.setRuleChecked(managepowerid, ruleid, value);
	}
	
	/**
	 * 根据 Roleid 返回ManagePower表的数据
	 * 此方法供UserPowerService使用
	 * @param roleid
	 * @return
	 */
	public List<ManagePowerEntity> getManagePowerList(String roleid) {
		return managePowerDao.getManagePowerList(roleid);
	}
	
	/**
	 * 根据ManagePower表的id返回Rule的数据
	 * 此方法供UserPowerService使用
	 * @param managepowerid
	 * @return
	 */
	public List<ManagePowerRuleEntity> getManagePowerRuleList(String managepowerid) {
		return managePowerDao.getManagePowerRuleList(managepowerid);
	}
	
}