/**
 * author: 谢少华
 * 
 * date: 2014-07-01 10:47
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.DetailDaoRef;

@Alias("FlowDetailEntity")
@DetailDaoRef(DaoName="flowDetailDao")
public class FlowDetailEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private BigDecimal rowno;

    private String id;

    private String pid;

    private BigDecimal menugroupid;

    private String menugroupname;

    private String fields;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getPid() { 
        return pid;
    }

    public void setPid(String pid) { 
        this.pid = pid;
    }

    public BigDecimal getMenugroupid() { 
        return menugroupid;
    }

    public void setMenugroupid(BigDecimal menugroupid) { 
        this.menugroupid = menugroupid;
    }

    public String getMenugroupname() { 
        return menugroupname;
    }

    public void setMenugroupname(String menugroupname) { 
        this.menugroupname = menugroupname;
    }

    public String getFields() { 
        return fields;
    }

    public void setFields(String fields) { 
        this.fields = fields;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}