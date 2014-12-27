/**
 * author: 谢少华
 * 
 * date: 2014-11-28 11:11
 */
package com.web.business.report.entity;

import java.math.BigDecimal;
import org.apache.ibatis.type.Alias;
import com.web.api.core.entity.TEntity;

@Alias("MenuruleEntity")
public class MenuruleEntity implements TEntity<BigDecimal> {

    private static final long serialVersionUID = 1L;

    private BigDecimal id;

    private String menu;

    private String ico;

    private BigDecimal power;

    private BigDecimal write;

    private String rulename;

    private String rulesql;

    private BigDecimal num;

    public BigDecimal getId() { 
        return id;
    }

    public void setId(BigDecimal id) { 
        this.id = id;
    }

    public String getMenu() { 
        return menu;
    }

    public void setMenu(String menu) { 
        this.menu = menu;
    }

    public String getIco() { 
        return ico;
    }

    public void setIco(String ico) { 
        this.ico = ico;
    }

    public BigDecimal getPower() { 
        return power;
    }

    public void setPower(BigDecimal power) { 
        this.power = power;
    }

    public BigDecimal getWrite() { 
        return write;
    }

    public void setWrite(BigDecimal write) { 
        this.write = write;
    }

    public String getRulename() { 
        return rulename;
    }

    public void setRulename(String rulename) { 
        this.rulename = rulename;
    }

    public String getRulesql() { 
        return rulesql;
    }

    public void setRulesql(String rulesql) { 
        this.rulesql = rulesql;
    }

    public BigDecimal getNum() { 
        return num;
    }

    public void setNum(BigDecimal num) { 
        this.num = num;
    }

}