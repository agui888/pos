/**
 * author: 谢少华
 * 
 * date: 2014-07-07 10:44
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;

@Alias("UserPowerRuleEntity")
public class UserPowerRuleEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private BigDecimal rowno;

    private String id;

    private String userpowerid;

    private String managepowerruleid2;

    private BigDecimal checked2;

    private BigDecimal flag2;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getUserpowerid() { 
        return userpowerid;
    }

    public void setUserpowerid(String userpowerid) { 
        this.userpowerid = userpowerid;
    }

    public String getManagepowerruleid2() { 
        return managepowerruleid2;
    }

    public void setManagepowerruleid2(String managepowerruleid2) { 
        this.managepowerruleid2 = managepowerruleid2;
    }

    public BigDecimal getChecked2() { 
        return checked2;
    }

    public void setChecked2(BigDecimal checked2) { 
        this.checked2 = checked2;
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