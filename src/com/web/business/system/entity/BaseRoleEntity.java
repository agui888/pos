/**
 * author: 谢少华
 * 
 * date: 2014-06-20 14:30
 */
package com.web.business.system.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("BaseRoleEntity")
public class BaseRoleEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Import=true, Export=true, Title="角色名称")
    @NotEmpty(message="#rolename#角色名称不能为空!")
    @Length(min=1, max=50, message="#rolename#长度需要在1和50之间.")
    private String rolename;

    @Excel(Import=true, Export=true, Title="角色类型(0应用角色/1管理角色)")
    private BigDecimal roletype;

    @Excel(Import=true, Export=true, Title="备注")
    private String remark;

    @Excel(Import=true, Export=true, Title="SYSTEM_USER.ID")
    private String createuserid;

    private BigDecimal delflag;

    private Date rowtime;

    private BigDecimal rowver;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getRolename() { 
        return rolename;
    }

    public void setRolename(String rolename) { 
        this.rolename = rolename;
    }

    public BigDecimal getRoletype() { 
        return roletype;
    }

    public void setRoletype(BigDecimal roletype) { 
        this.roletype = roletype;
    }

    public String getRemark() { 
        return remark;
    }

    public void setRemark(String remark) { 
        this.remark = remark;
    }

    public String getCreateuserid() { 
        return createuserid;
    }

    public void setCreateuserid(String createuserid) { 
        this.createuserid = createuserid;
    }

    public BigDecimal getDelflag() { 
        return delflag;
    }

    public void setDelflag(BigDecimal delflag) { 
        this.delflag = delflag;
    }

    public Date getRowtime() { 
        return rowtime;
    }

    public void setRowtime(Date rowtime) { 
        this.rowtime = rowtime;
    }

    public BigDecimal getRowver() { 
        return rowver;
    }

    public void setRowver(BigDecimal rowver) { 
        this.rowver = rowver;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}