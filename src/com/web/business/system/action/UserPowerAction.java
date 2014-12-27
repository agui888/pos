/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.entity.ManagePowerEntity;
import com.web.business.system.entity.ManagePowerRuleEntity;
import com.web.business.system.entity.UserPowerEntity;
import com.web.business.system.entity.UserPowerRuleEntity;
import com.web.business.system.service.ManagePowerService;
import com.web.business.system.service.UserPowerService;

public class UserPowerAction extends StandardAction {

    private static final long serialVersionUID = 1L;

	private String userroleid;
	
	private String manageroleid;
	
	private String userpowerid;
	
	private String managepowerid;
	
    @Autowired
    private UserPowerService userPowerService;
    
    @Autowired
    private ManagePowerService managePowerService;

    private UserPowerEntity userPowerEntity;
    
    private UserPowerRuleEntity userPowerRuleEntity;
    
	public String getUserroleid() {
		return userroleid;
	}

	public void setUserroleid(String userroleid) {
		this.userroleid = userroleid;
	}

	public String getManageroleid() {
		return manageroleid;
	}

	public void setManageroleid(String manageroleid) {
		this.manageroleid = manageroleid;
	}

	public String getUserpowerid() {
		return userpowerid;
	}

	public void setUserpowerid(String userpowerid) {
		this.userpowerid = userpowerid;
	}

	public String getManagepowerid() {
		return managepowerid;
	}

	public void setManagepowerid(String managepowerid) {
		this.managepowerid = managepowerid;
	}

	public UserPowerService getUserPowerService() {
		return userPowerService;
	}

	public void setUserPowerService(UserPowerService userPowerService) {
		this.userPowerService = userPowerService;
	}

	public ManagePowerService getManagePowerService() {
		return managePowerService;
	}

	public void setManagePowerService(ManagePowerService managePowerService) {
		this.managePowerService = managePowerService;
	}

	public UserPowerEntity getUserPowerEntity() {
		return userPowerEntity;
	}

	public void setUserPowerEntity(UserPowerEntity userPowerEntity) {
		this.userPowerEntity = userPowerEntity;
	}

	public UserPowerRuleEntity getUserPowerRuleEntity() {
		return userPowerRuleEntity;
	}

	public void setUserPowerRuleEntity(UserPowerRuleEntity userPowerRuleEntity) {
		this.userPowerRuleEntity = userPowerRuleEntity;
	}

	/**
	 * index JSP
	 * @return
	 */
	public String enter() {
		String path = (String)session.getAttribute("path");
		List<ManagePowerEntity> lsMP = (List<ManagePowerEntity>)managePowerService.getManagePowerList(this.getManageroleid());
		userPowerService.initMenu(lsMP, this.getUserroleid());
		request.setAttribute("userPowerMenuJosn", userPowerService.getUserPowerMenuList(path, this.getUserroleid()));
		return Constant.ENTER;
	}
	
	/**
	 * List Grid JSP
	 * @return
	 */
	public String list() {
		// 初始化规则信息
		List<ManagePowerRuleEntity> lsRule = (List<ManagePowerRuleEntity>)managePowerService.getManagePowerRuleList(this.getManagepowerid());
		userPowerService.initRule(lsRule, this.getUserpowerid());
		request.setAttribute("userPowerRuleList", userPowerService.getPowerRuleList(this.getUserpowerid()));
		
		// 只读权限
		UserPowerEntity mpe = userPowerService.getUserPowerEntity(this.getUserpowerid());
		if (BaseUtils.isNotNull(mpe)) {
			request.setAttribute("managepowerwrite2", mpe.getManagepowerwrite2());
			request.setAttribute("iswrite2", mpe.getIswrite2());
		}
		
		return Constant.LIST;
	}
	
	/**
	 * Ajax
	 */
	public void ispower() {
		String id = request.getParameter("id");
		String value = request.getParameter("value");
		userPowerService.setIspower2(id, value);
	}
	
	/**
	 * Ajax
	 */
	public void iswrite() {
		String id = request.getParameter("id");
		String value = request.getParameter("value");
		userPowerService.setIswrite2(id, value);
	}
	
	/**
	 * Ajax
	 */
	public void rulechecked() {
		String userpowerid = request.getParameter("userpowerid");
		String ruleid = request.getParameter("ruleid");
		String value = request.getParameter("value");
		userPowerService.setRuleChecked2(userpowerid, ruleid, value);
	}

}