/**
 * author: 谢少华
 * 
 * date: 2014-11-28 14:25
 */
package com.web.business.report.entity;

import java.math.BigDecimal;
import java.util.Date;
import org.apache.ibatis.type.Alias;
import com.web.api.core.entity.TEntity;

@Alias("UserroleEntity")
public class UserroleEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private String id;

    private String userid;

    private String username;

    private String deptname;

    private String positionname;

    private String rolenames;

    private String mobilephone;

    private BigDecimal islock;

    private BigDecimal usertype;

    private String createusername;

    private Date rowtime;


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

    public String getDeptname() { 
        return deptname;
    }

    public void setDeptname(String deptname) { 
        this.deptname = deptname;
    }

    public String getPositionname() { 
        return positionname;
    }

    public void setPositionname(String positionname) { 
        this.positionname = positionname;
    }

    public String getRolenames() { 
        return rolenames;
    }

    public void setRolenames(String rolenames) { 
        this.rolenames = rolenames;
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

    public String getCreateusername() { 
        return createusername;
    }

    public void setCreateusername(String createusername) { 
        this.createusername = createusername;
    }

    public Date getRowtime() { 
        return rowtime;
    }

    public void setRowtime(Date rowtime) { 
        this.rowtime = rowtime;
    }

}