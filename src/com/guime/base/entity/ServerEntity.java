/**
 * author: 谢少华
 * 
 * date: 2014-12-04 16:33
 */
package com.guime.base.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("ServerEntity")
public class ServerEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @NotEmpty(message="#servername#服务器名不能为空!")
    @Length(min=0, max=255, message="#servername#服务器名长度需要在0和255之间.")
    private String servername;

    @NotEmpty(message="#ip#IP地址不能为空!")
    @Length(min=0, max=50, message="#ip#IP地址长度需要在0和50之间.")
    private String ip;

    @NotEmpty(message="#port#端口不能为空!")
    @Length(min=0, max=10, message="#port#端口长度需要在0和10之间.")
    private String port;

    @NotEmpty(message="#sid#实例不能为空!")
    @Length(min=0, max=255, message="#sid#实例长度需要在0和255之间.")
    private String sid;

    @NotEmpty(message="#oracleuser#用户不能为空!")
    @Length(min=0, max=255, message="#oracleuser#用户长度需要在0和255之间.")
    private String oracleuser;

    @NotEmpty(message="#oraclepassword#密码不能为空!")
    @Length(min=0, max=255, message="#oraclepassword#密码长度需要在0和255之间.")
    private String oraclepassword;
    
    @NotEmpty(message="#datasource#DataSource不能为空!")
    @Length(min=0, max=255, message="#datasource#DataSource长度需要在0和255之间.")
    private String datasource;

	private BigDecimal use;

    private BigDecimal delflag;

    private Date rowtime;

    private BigDecimal rowver;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getServername() { 
        return servername;
    }

    public void setServername(String servername) { 
        this.servername = servername;
    }

    public String getIp() { 
        return ip;
    }

    public void setIp(String ip) { 
        this.ip = ip;
    }

    public String getPort() { 
        return port;
    }

    public void setPort(String port) { 
        this.port = port;
    }

    public String getSid() { 
        return sid;
    }

    public void setSid(String sid) { 
        this.sid = sid;
    }

    public String getOracleuser() { 
        return oracleuser;
    }

    public void setOracleuser(String oracleuser) { 
        this.oracleuser = oracleuser;
    }

    public String getOraclepassword() { 
        return oraclepassword;
    }

    public void setOraclepassword(String oraclepassword) { 
        this.oraclepassword = oraclepassword;
    }

    public BigDecimal getUse() { 
        return use;
    }

    public void setUse(BigDecimal use) { 
        this.use = use;
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
    
    public String getDatasource() {
		return datasource;
	}

	public void setDatasource(String datasource) {
		this.datasource = datasource;
	}

}