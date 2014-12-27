/**
 * author: 谢少华
 * 
 * date: 2014-11-28 15:34
 */
package com.web.business.report.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;

@Alias("RolemanagepowerEntity")
public class RolemanagepowerEntity implements TEntity<BigDecimal> {

    private static final long serialVersionUID = 1L;

    private BigDecimal id;

    private BigDecimal mid;

    private BigDecimal msid;

    private String mtype;

    private BigDecimal mcolid;

    private String mmenu;

    private BigDecimal mpower;

    private BigDecimal mwrite;

    private BigDecimal pispower;

    private BigDecimal pmenuwrite;

    private BigDecimal piswrite;

    private String rrolename;

    private String rrulename;

    private String rrulesql;

    private BigDecimal rnum;

    private String rremark;

    private BigDecimal rchecked;

    private String menu;

    public BigDecimal getId() { 
        return id;
    }

    public void setId(BigDecimal id) { 
        this.id = id;
    }

    public BigDecimal getMid() { 
        return mid;
    }

    public void setMid(BigDecimal mid) { 
        this.mid = mid;
    }

    public BigDecimal getMsid() { 
        return msid;
    }

    public void setMsid(BigDecimal msid) { 
        this.msid = msid;
    }

    public String getMtype() { 
        return mtype;
    }

    public void setMtype(String mtype) { 
        this.mtype = mtype;
    }

    public BigDecimal getMcolid() { 
        return mcolid;
    }

    public void setMcolid(BigDecimal mcolid) { 
        this.mcolid = mcolid;
    }

    public String getMmenu() { 
        return mmenu;
    }

    public void setMmenu(String mmenu) { 
        this.mmenu = mmenu;
    }

    public BigDecimal getMpower() { 
        return mpower;
    }

    public void setMpower(BigDecimal mpower) { 
        this.mpower = mpower;
    }

    public BigDecimal getMwrite() { 
        return mwrite;
    }

    public void setMwrite(BigDecimal mwrite) { 
        this.mwrite = mwrite;
    }

    public BigDecimal getPispower() { 
        return pispower;
    }

    public void setPispower(BigDecimal pispower) { 
        this.pispower = pispower;
    }

    public BigDecimal getPmenuwrite() { 
        return pmenuwrite;
    }

    public void setPmenuwrite(BigDecimal pmenuwrite) { 
        this.pmenuwrite = pmenuwrite;
    }

    public BigDecimal getPiswrite() { 
        return piswrite;
    }

    public void setPiswrite(BigDecimal piswrite) { 
        this.piswrite = piswrite;
    }

    public String getRrolename() { 
        return rrolename;
    }

    public void setRrolename(String rrolename) { 
        this.rrolename = rrolename;
    }

    public String getRrulename() { 
        return rrulename;
    }

    public void setRrulename(String rrulename) { 
        this.rrulename = rrulename;
    }

    public String getRrulesql() { 
        return rrulesql;
    }

    public void setRrulesql(String rrulesql) { 
        this.rrulesql = rrulesql;
    }

    public BigDecimal getRnum() { 
        return rnum;
    }

    public void setRnum(BigDecimal rnum) { 
        this.rnum = rnum;
    }

    public String getRremark() { 
        return rremark;
    }

    public void setRremark(String rremark) { 
        this.rremark = rremark;
    }

    public BigDecimal getRchecked() { 
        return rchecked;
    }

    public void setRchecked(BigDecimal rchecked) { 
        this.rchecked = rchecked;
    }

    public String getMenu() { 
        return menu;
    }

    public void setMenu(String menu) { 
        this.menu = menu;
    }

}