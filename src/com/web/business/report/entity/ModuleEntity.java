/**
 * author: 谢少华
 * 
 * date: 2014-11-29 09:36
 */
package com.web.business.report.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;

@Alias("ModuleEntity")
public class ModuleEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private String id;

    private String menu;

    private BigDecimal enter;

    private BigDecimal del;

    private BigDecimal exp;

    private BigDecimal save;

    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getMenu() { 
        return menu;
    }

    public void setMenu(String menu) { 
        this.menu = menu;
    }

    public BigDecimal getEnter() { 
        return enter;
    }

    public void setEnter(BigDecimal enter) { 
        this.enter = enter;
    }

    public BigDecimal getDel() { 
        return del;
    }

    public void setDel(BigDecimal del) { 
        this.del = del;
    }

    public BigDecimal getExp() { 
        return exp;
    }

    public void setExp(BigDecimal exp) { 
        this.exp = exp;
    }

    public BigDecimal getSave() { 
        return save;
    }

    public void setSave(BigDecimal save) { 
        this.save = save;
    }

}