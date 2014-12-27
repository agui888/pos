/**
 * author: 谢少华
 * 
 * date: 2014-06-27 11:02
 */
package com.web.business.system.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;

import com.web.api.core.entity.TEntity;

@Alias("ParamEntity")
public class ParamEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private BigDecimal rowno;

    private String id = "SYS";

    private Date usefullife;

    @Length(min=0, max=2000, message="#appname#长度需要在0和2000之间.")
    private String appname;

    @Length(min=0, max=10, message="#version#长度需要在0和10之间.")
    private String version;

    @Length(min=0, max=2000, message="#usercompany#长度需要在0和2000之间.")
    private String usercompany;

    @Length(min=0, max=2000, message="#softcompany#长度需要在0和2000之间.")
    private String softcompany;

    @Length(min=0, max=50, message="#phone#长度需要在0和50之间.")
    private String phone;

    @Length(min=0, max=10, message="#system#长度需要在0和10之间.")
    private String system;

    @Length(min=0, max=255, message="#pop3#长度需要在0和255之间.")
    private String pop3;

    @Length(min=0, max=255, message="#stmp#长度需要在0和255之间.")
    private String stmp;

    @Length(min=0, max=255, message="#login#长度需要在0和255之间.")
    private String login;

    @Length(min=0, max=255, message="#pass#长度需要在0和255之间.")
    private String pass;

    private BigDecimal visits;

    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public Date getUsefullife() { 
        return usefullife;
    }

    public void setUsefullife(Date usefullife) { 
        this.usefullife = usefullife;
    }

    public String getAppname() { 
        return appname;
    }

    public void setAppname(String appname) { 
        this.appname = appname;
    }

    public String getVersion() { 
        return version;
    }

    public void setVersion(String version) { 
        this.version = version;
    }

    public String getUsercompany() { 
        return usercompany;
    }

    public void setUsercompany(String usercompany) { 
        this.usercompany = usercompany;
    }

    public String getSoftcompany() { 
        return softcompany;
    }

    public void setSoftcompany(String softcompany) { 
        this.softcompany = softcompany;
    }

    public String getPhone() { 
        return phone;
    }

    public void setPhone(String phone) { 
        this.phone = phone;
    }

    public String getSystem() { 
        return system;
    }

    public void setSystem(String system) { 
        this.system = system;
    }

    public String getPop3() { 
        return pop3;
    }

    public void setPop3(String pop3) { 
        this.pop3 = pop3;
    }

    public String getStmp() { 
        return stmp;
    }

    public void setStmp(String stmp) { 
        this.stmp = stmp;
    }

    public String getLogin() { 
        return login;
    }

    public void setLogin(String login) { 
        this.login = login;
    }

    public String getPass() { 
        return pass;
    }

    public void setPass(String pass) { 
        this.pass = pass;
    }

    public BigDecimal getVisits() { 
        return visits;
    }

    public void setVisits(BigDecimal visits) { 
        this.visits = visits;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}