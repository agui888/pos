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

import com.web.api.core.power.PowerBean;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.dao.UserPowerDao;
import com.web.business.system.dao.UserPowerRuleDao;
import com.web.business.system.entity.ManagePowerEntity;
import com.web.business.system.entity.ManagePowerRuleEntity;
import com.web.business.system.entity.UserPowerEntity;
import com.web.business.system.entity.UserPowerRuleEntity;
import com.web.business.system.service.UserPowerService;

public class UserPowerServiceImpl implements UserPowerService { 

    private UserPowerDao userPowerDao;
    
    private UserPowerRuleDao userPowerRuleDao;

	public UserPowerDao getUserPowerDao() {
        return userPowerDao;
    }

    public void setUserPowerDao(UserPowerDao userPowerDao) {
        this.userPowerDao = userPowerDao;
    }
    
    public UserPowerRuleDao getUserPowerRuleDao() {
		return userPowerRuleDao;
	}

	public void setUserPowerRuleDao(UserPowerRuleDao userPowerRuleDao) {
		this.userPowerRuleDao = userPowerRuleDao;
	}
	
	@Override
	public PowerBean accessPower(String usertype, String roleids, String menuid) {
		PowerBean powerBean = new PowerBean();
		Map<String, Object> map = null;
		
		if (usertype.equals("0"))
			map = userPowerDao.accessUserPower(BaseUtils.arrayToSqlIn(roleids), menuid);
		else if (usertype.equals("1"))
			map = userPowerDao.accessManagePower(BaseUtils.arrayToSqlIn(roleids), menuid);
		
		powerBean.setPower(BaseUtils.bigDecimalToBoolean(map.get("power")));
		powerBean.setIspower(BaseUtils.bigDecimalToBoolean(map.get("ispower")));
		powerBean.setIswrite(BaseUtils.bigDecimalToBoolean(map.get("iswrite")));
		powerBean.setRulesql((String)map.get("rulesql"));
		
		return powerBean;
	}
	
	@Override
	public String accessRuleSQL(String usertype, String roleids, String menuid){
		String sql = null;
		if (usertype.equals("0"))
			sql = userPowerDao.accessUserRuleSQL(BaseUtils.arrayToSqlIn(roleids), menuid);
		else if (usertype.equals("1"))
			sql = userPowerDao.accessManageRuleSQL(roleids, menuid);
		return sql;
	}
	
	@Override
	public JSONArray getUserPowerMenuList(String path, String roleid) {
		List<Map<String, Object>> ls = userPowerDao.getUserPowerMenuList(path, roleid);
		JSONArray jsonArray = JSONArray.fromObject(ls);   
		return jsonArray;
	}

    /**
	 * 初始化菜单数据 - OK
	 * @param ls
	 * @param roleid
	 */
    @Override 
    public void initMenu(List<ManagePowerEntity> ls, String userroleid) {
    	userPowerDao.updatePowerEntityFlag(userroleid);
		
    	for (ManagePowerEntity mp: ls) {
			UserPowerEntity up = userPowerDao.getPowerEntity(userroleid, mp.getMenuid().toString());
			if (BaseUtils.isNull(up)) {
				up = new UserPowerEntity();
				up.setManagepowerid2(mp.getId());
				up.setRoleid2(userroleid);
				up.setMenuid2(mp.getMenuid());
				up.setIspower2(mp.getIspower());
				up.setManagepowerwrite2(mp.getIswrite());
				up.setIswrite2(mp.getIswrite());
				up.setFlag2(new BigDecimal(0));
				userPowerDao.insert(up);
			} else {
				up.setManagepowerwrite2(mp.getIswrite());
				up.setFlag2(new BigDecimal(0));
				userPowerDao.update(up);
			}				
		}
		
		userPowerDao.deletePowerEntityFlag(userroleid);
	}
	
	/**
	 * 初始化规则  - OK
	 * @param ls
	 * @param userpowerid
	 */
    public void initRule(List<ManagePowerRuleEntity> ls, String userpowerid) {
		userPowerDao.updatePowerRuleEntityFlag(userpowerid);
		
		if (BaseUtils.isNotNull(userPowerDao.getPowerEntityExists(userpowerid)))
			for (ManagePowerRuleEntity re: ls) {
				UserPowerRuleEntity up = userPowerDao.getPowerRuleEntity(userpowerid, re.getId());
				if (BaseUtils.isNull(up)) {
					up = new UserPowerRuleEntity();
					up.setUserpowerid(userpowerid);
					up.setManagepowerruleid2(re.getId());
					up.setChecked2(new BigDecimal(0));
					up.setFlag2(new BigDecimal(0));
					userPowerRuleDao.insert(up); 
				} else {
					up.setFlag2(new BigDecimal(0));
					userPowerRuleDao.update(up); 
				}
			}
		
		userPowerDao.deletePowerRuleEntityFlag(userpowerid);
	}
	
	/**
	 * 返回规则数据 - OK
	 * @param userpowerid
	 * @return
	 */
    public List<Map<String, Object>> getPowerRuleList(String userpowerid) {
		return userPowerDao.getPowerRuleList(userpowerid);
	}
	
	/**
	 * 返回  UserPowerEntity 对象
	 * @param userpowerid
	 * @return
	 */
    public UserPowerEntity getUserPowerEntity(String userpowerid) {
		return userPowerDao.getUserPowerEntity(userpowerid);
	}

	/**
	 * DWR 1 - OK
	 * @param id
	 * @param value
	 */
    public void setIspower2(String id, String value) {
		userPowerDao.setIspower2(id, value);
	}
	
	/**
	 * DWR 2 - OK
	 * @param id
	 * @param value
	 */
    public void setIswrite2(String id, String value) {
		userPowerDao.setIswrite2(id, value);
	}
	
	/**
	 * DWR 3 - OK
	 * @param userpowerid
	 * @param ruleid
	 * @param value
	 */
    public void setRuleChecked2(String userpowerid, String ruleid, String value) {
    	userPowerDao.initRuleChecked2(userpowerid);
		userPowerDao.setRuleChecked2(userpowerid, ruleid, value);
	}

}