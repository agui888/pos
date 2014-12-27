/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:29
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;

@Alias("ManagePowerEntity")
public class ManagePowerEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private BigDecimal rowno;

    private String id;

    private String roleid;

    private BigDecimal menuid;

    private BigDecimal ispower;

    private BigDecimal menuwrite;

    private BigDecimal iswrite;

    private BigDecimal flag;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getRoleid() { 
        return roleid;
    }

    public void setRoleid(String roleid) { 
        this.roleid = roleid;
    }

    public BigDecimal getMenuid() { 
        return menuid;
    }

    public void setMenuid(BigDecimal menuid) { 
        this.menuid = menuid;
    }

    public BigDecimal getIspower() { 
        return ispower;
    }

    public void setIspower(BigDecimal ispower) { 
        this.ispower = ispower;
    }

    public BigDecimal getMenuwrite() { 
        return menuwrite;
    }

    public void setMenuwrite(BigDecimal menuwrite) { 
        this.menuwrite = menuwrite;
    }

    public BigDecimal getIswrite() { 
        return iswrite;
    }

    public void setIswrite(BigDecimal iswrite) { 
        this.iswrite = iswrite;
    }

    public BigDecimal getFlag() { 
        return flag;
    }

    public void setFlag(BigDecimal flag) { 
        this.flag = flag;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}