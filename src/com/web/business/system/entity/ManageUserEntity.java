package com.web.business.system.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.template.annotation.Excel;

@Alias("ManageUserEntity")
public class ManageUserEntity implements UserEntity {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Import=true, Export=true, Title="帐号")
    @NotEmpty(message="#userid#帐号不能为空!")
    @Length(min=2, max=20, message="#userid#帐号长度需要在2和20之间.")
    private String userid;

    @Excel(Import=true, Export=true, Title="姓名")
    @NotEmpty(message="#username#姓名不能为空!")
    @Length(min=2, max=50, message="#username#姓名长度需要在2和50之间.")
    private String username;

    @NotEmpty(message="#sex#性别不能为空!")
    @Excel(Import=true, Export=true, Title="性别")
    private String sex;

    @Excel(Import=true, Export=true, Title="密码")
    private String password;

	@Excel(Import=true, Export=true, Title="多个角色ID(在USERTYPE=1时,此字段只会保存一个角色ID)")
    private String roleids;

    @Excel(Import=true, Export=true, Title="多个角色名称")
    private String rolenames;

    @Excel(Import=true, Export=true, Title="电子邮件")
    @Email
    private String email;
    
    @Excel(Import=true, Export=true, Title="序列")
    private String colid;

	@Excel(Import=true, Export=true, Title="办公电话")
    private String officephone;

    @Excel(Import=true, Export=true, Title="办公地址")
    private String officeaddress;

    @Excel(Import=true, Export=true, Title="家庭电话")
    private String homephone;

    @Excel(Import=true, Export=true, Title="家庭地址")
    private String homeaddress;

    @Excel(Import=true, Export=true, Title="移动电话")
    @NotEmpty(message="#mobilephone#移动电话不能为空!")
    @Length(min=0, max=20, message="#mobilephone#移动电话长度需要在0和20之间.")
    private String mobilephone;

    @Excel(Import=true, Export=true, Title="锁定帐号")
    private BigDecimal islock;

    @Excel(Import=true, Export=true, Title="用户类型(0应用用户/1管理用户)")
    private BigDecimal usertype;

    @Excel(Import=true, Export=true, Title="创建用户")
    private String createuserid;

    private BigDecimal delflag;

    private Date rowtime;

    private BigDecimal rowver;
    
    private String message;

	public BigDecimal getRowno() {
		return rowno;
	}

	public void setRowno(BigDecimal rowno) {
		this.rowno = rowno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRoleids() {
		return roleids;
	}

	public void setRoleids(String roleids) {
		this.roleids = roleids;
	}

	public String getRolenames() {
		return rolenames;
	}

	public void setRolenames(String rolenames) {
		this.rolenames = rolenames;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOfficephone() {
		return officephone;
	}

	public void setOfficephone(String officephone) {
		this.officephone = officephone;
	}

	public String getOfficeaddress() {
		return officeaddress;
	}

	public void setOfficeaddress(String officeaddress) {
		this.officeaddress = officeaddress;
	}

	public String getHomephone() {
		return homephone;
	}

	public void setHomephone(String homephone) {
		this.homephone = homephone;
	}

	public String getHomeaddress() {
		return homeaddress;
	}

	public void setHomeaddress(String homeaddress) {
		this.homeaddress = homeaddress;
	}

	public String getMobilephone() {
		return mobilephone;
	}

	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone;
	}

	public BigDecimal getIslock() {
		return islock;
	}

	public void setIslock(BigDecimal islock) {
		this.islock = islock;
	}

	public BigDecimal getUsertype() {
		return usertype;
	}

	public void setUsertype(BigDecimal usertype) {
		this.usertype = usertype;
	}

	public String getCreateuserid() {
		return createuserid;
	}

	public void setCreateuserid(String createuserid) {
		this.createuserid = createuserid;
	}

	public BigDecimal getDelflag() {
		return delflag;
	}

	public void setDelflag(BigDecimal delflag) {
		this.delflag = delflag;
	}

	public Date getRowtime() {
		return rowtime;
	}

	public void setRowtime(Date rowtime) {
		this.rowtime = rowtime;
	}

	public BigDecimal getRowver() {
		return rowver;
	}

	public void setRowver(BigDecimal rowver) {
		this.rowver = rowver;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
    public String getColid() {
		return colid;
	}

	public void setColid(String colid) {
		this.colid = colid;
	}

	@Override
	public String getDeptid() {
		return null;
	}

	@Override
	public String getPositionid() {
		return null;
	}

	public String getManageuserid() {
		return null;
	}

}