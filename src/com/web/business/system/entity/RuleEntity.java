/**
 * author: 谢少华
 * 
 * date: 2014-06-24 11:05
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("RuleEntity")
public class RuleEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Import=true, Export=true, Title="菜单ID")
    private BigDecimal menuid;

    @Excel(Import=true, Export=true, Title="规则名称")
    @Length(min=0, max=100, message="#rulename#长度需要在0和100之间.")
    private String rulename;

    @Excel(Import=true, Export=true, Title="规则SQL")
    @Length(min=0, max=1000, message="#rulesql#长度需要在0和1000之间.")
    private String rulesql;

    @Excel(Import=true, Export=true, Title="序号")
    private BigDecimal num;

    @Excel(Import=true, Export=true, Title="备注")
    @Length(min=0, max=500, message="#remark#长度需要在0和500之间.")
    private String remark;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public BigDecimal getMenuid() { 
        return menuid;
    }

    public void setMenuid(BigDecimal menuid) { 
        this.menuid = menuid;
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

    public String getRemark() { 
        return remark;
    }

    public void setRemark(String remark) { 
        this.remark = remark;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}