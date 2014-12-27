package com.web.api.core.power;

public class PowerBean {
	
	// (总开关) - 当前模块是否参加权限控制 SYSTEM_MENU 表
	private boolean power;
	
	// 权限配置是否有权限
	private boolean ispower;
	
	// 权限配置是否有权限
	private boolean iswrite;
	
	// 模块的数据查询规则
	private String rulesql;

	public boolean getPower() {
		return power;
	}

	public void setPower(boolean power) {
		this.power = power;
	}

	public boolean getIspower() {
		return ispower;
	}

	public void setIspower(boolean ispower) {
		this.ispower = ispower;
	}

	public boolean getIswrite() {
		return iswrite;
	}

	public void setIswrite(boolean iswrite) {
		this.iswrite = iswrite;
	}

	public String getRulesql() {
		return rulesql;
	}

	public void setRulesql(String rulesql) {
		this.rulesql = rulesql;
	}

}