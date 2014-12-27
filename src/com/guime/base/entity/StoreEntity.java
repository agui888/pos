/**
 * author: 谢少华
 * 
 * date: 2014-12-05 16:32
 */
package com.guime.base.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("StoreEntity")
public class StoreEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Export=true, Title="所属地区ID")
    @NotEmpty(message="#cityid#所属地区ID不能为空!")
    private BigDecimal cityid;

    @Excel(Export=true, Title="商家名称")
    @NotEmpty(message="#storename#商家名称不能为空!")
    @Length(min=0, max=500, message="#storename#商家名称长度需要在0和500之间.")
    private String storename;

    @Excel(Export=true, Title="营业执照编号")
    @NotEmpty(message="#code#营业执照编号不能为空!")
    @Length(min=0, max=100, message="#code#营业执照编号长度需要在0和100之间.")
    private String code;

    @Excel(Export=true, Title="负责人")
    @NotEmpty(message="#linkman#负责人不能为空!")
    @Length(min=0, max=20, message="#linkman#负责人长度需要在0和20之间.")
    private String linkman;

    @Excel(Export=true, Title="电话号码")
    @NotEmpty(message="#tel#电话号码不能为空!")
    @Length(min=0, max=20, message="#tel#电话号码长度需要在0和20之间.")
    private String tel;

    @Excel(Export=true, Title="手机号码")
    @NotEmpty(message="#phone#手机号码不能为空!")
    @Length(min=0, max=20, message="#phone#手机号码长度需要在0和20之间.")
    private String phone;

    @Excel(Export=true, Title="电子邮件")
    @NotEmpty(message="#email#电子邮件不能为空!")
    @Length(min=0, max=20, message="#email#电子邮件长度需要在0和20之间.")
    @Email(message="#email#电子邮件非法Email地址!")
    private String email;

    @Excel(Export=true, Title="地址")
    @NotEmpty(message="#address#地址不能为空!")
    @Length(min=0, max=500, message="#address#地址长度需要在0和500之间.")
    private String address;

    @Excel(Export=true, Title="状态0表示启用/1表示停用")
    @NotEmpty(message="#state#状态0表示启用/1表示停用不能为空!")
    private BigDecimal state;

    @Excel(Export=true, Title="数据源")
    @NotEmpty(message="#datasource#数据源不能为空!")
    @Length(min=0, max=255, message="#datasource#数据源长度需要在0和255之间.")
    private String datasource;

    @Excel(Export=true, Title="最大连接数")
    @NotEmpty(message="#maxconnection#最大连接数不能为空!")
    private BigDecimal maxconnection;

    private BigDecimal delflag;

    private Date rowtime;

    private BigDecimal rowver;
    
	private ServerEntity serverEntity;
    
    private CityEntity cityEntity;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public BigDecimal getCityid() { 
        return cityid;
    }

    public void setCityid(BigDecimal cityid) { 
        this.cityid = cityid;
    }

    public String getStorename() { 
        return storename;
    }

    public void setStorename(String storename) { 
        this.storename = storename;
    }

    public String getCode() { 
        return code;
    }

    public void setCode(String code) { 
        this.code = code;
    }

    public String getLinkman() { 
        return linkman;
    }

    public void setLinkman(String linkman) { 
        this.linkman = linkman;
    }

    public String getTel() { 
        return tel;
    }

    public void setTel(String tel) { 
        this.tel = tel;
    }

    public String getPhone() { 
        return phone;
    }

    public void setPhone(String phone) { 
        this.phone = phone;
    }

    public String getEmail() { 
        return email;
    }

    public void setEmail(String email) { 
        this.email = email;
    }

    public String getAddress() { 
        return address;
    }

    public void setAddress(String address) { 
        this.address = address;
    }

    public BigDecimal getState() { 
        return state;
    }

    public void setState(BigDecimal state) { 
        this.state = state;
    }

    public String getDatasource() { 
        return datasource;
    }

    public void setDatasource(String datasource) { 
        this.datasource = datasource;
    }

    public BigDecimal getMaxconnection() { 
        return maxconnection;
    }

    public void setMaxconnection(BigDecimal maxconnection) { 
        this.maxconnection = maxconnection;
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

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }
    
    public ServerEntity getServerEntity() {
		return serverEntity;
	}

	public void setServerEntity(ServerEntity serverEntity) {
		this.serverEntity = serverEntity;
	}

	public CityEntity getCityEntity() {
		return cityEntity;
	}

	public void setCityEntity(CityEntity cityEntity) {
		this.cityEntity = cityEntity;
	}
    
	@Override
	public String toString() {
		return "[ID=" + id + ", 地区="
				+ cityid + ", 商家名称=" + storename + ", 营业执照编号=" + code + ", 负责人="
				+ linkman + ", 电话号码=" + tel + ", 手机号码=" + phone + ", 状态=" + state + ", DataSource=" + datasource
				+ ", 最大连接数=" + maxconnection + "]";
	}

}