/**
 * author: 谢少华
 * 
 * date: 2014-11-28 17:06
 */
package com.web.business.report.entity;

import java.math.BigDecimal;
import org.apache.ibatis.type.Alias;
import com.web.api.core.entity.TEntity;

@Alias("AccessEntity")
public class AccessEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    private String id;

    private String sdname;

    private BigDecimal num;

    private BigDecimal userip;

    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getSdname() { 
        return sdname;
    }

    public void setSdname(String sdname) { 
        this.sdname = sdname;
    }

    public BigDecimal getNum() { 
        return num;
    }

    public void setNum(BigDecimal num) { 
        this.num = num;
    }

    public BigDecimal getUserip() { 
        return userip;
    }

    public void setUserip(BigDecimal userip) { 
        this.userip = userip;
    }

}