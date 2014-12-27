/**
 * author: 谢少华
 * 
 * date: 2014-07-02 10:46
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;

@Alias("ManagePowerRuleEntity")
public class ManagePowerRuleEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private BigDecimal rowno;

    private String id;

    private String managepowerid;

    private String ruleid;

    private BigDecimal checked;

    private BigDecimal flag;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getManagepowerid() { 
        return managepowerid;
    }

    public void setManagepowerid(String managepowerid) { 
        this.managepowerid = managepowerid;
    }

    public String getRuleid() { 
        return ruleid;
    }

    public void setRuleid(String ruleid) { 
        this.ruleid = ruleid;
    }

    public BigDecimal getChecked() { 
        return checked;
    }

    public void setChecked(BigDecimal checked) { 
        this.checked = checked;
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