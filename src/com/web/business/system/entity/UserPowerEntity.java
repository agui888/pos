/**
 * author: 谢少华
 * 
 * date: 2014-07-07 09:59
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;

@Alias("UserPowerEntity")
public class UserPowerEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private BigDecimal rowno;

    private String id;

    private String managepowerid2;

    private String roleid2;

    private BigDecimal menuid2;

    private BigDecimal ispower2;

    private BigDecimal managepowerwrite2;

    private BigDecimal iswrite2;

    private BigDecimal flag2;

    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getManagepowerid2() { 
        return managepowerid2;
    }

    public void setManagepowerid2(String managepowerid2) { 
        this.managepowerid2 = managepowerid2;
    }

    public String getRoleid2() { 
        return roleid2;
    }

    public void setRoleid2(String roleid2) { 
        this.roleid2 = roleid2;
    }

    public BigDecimal getMenuid2() { 
        return menuid2;
    }

    public void setMenuid2(BigDecimal menuid2) { 
        this.menuid2 = menuid2;
    }

    public BigDecimal getIspower2() { 
        return ispower2;
    }

    public void setIspower2(BigDecimal ispower2) { 
        this.ispower2 = ispower2;
    }

    public BigDecimal getManagepowerwrite2() { 
        return managepowerwrite2;
    }

    public void setManagepowerwrite2(BigDecimal managepowerwrite2) { 
        this.managepowerwrite2 = managepowerwrite2;
    }

    public BigDecimal getIswrite2() { 
        return iswrite2;
    }

    public void setIswrite2(BigDecimal iswrite2) { 
        this.iswrite2 = iswrite2;
    }

    public BigDecimal getFlag2() { 
        return flag2;
    }

    public void setFlag2(BigDecimal flag2) { 
        this.flag2 = flag2;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}