package com.web.business.system.entity;

import java.math.BigDecimal;

import com.web.api.core.entity.TEntity;

public interface UserEntity extends TEntity<String> {
	
	public String getId();

    public String getUserid();

    public String getUsername();

    public String getSex();

    public String getPassword();

    public String getDeptid();

    public String getPositionid();

    public String getRoleids();

    public BigDecimal getIslock();

    public BigDecimal getUsertype();

    public String getCreateuserid();

    public String getManageuserid();

    public String getMessage();

}
