/**
 * author: 谢少华
 * 
 * date: 2014-06-27 16:49
 */
package com.web.business.system.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("PositionEntity")
public class PositionEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Import=true, Export=true, Title="职务名称")
    @NotEmpty(message="#positionname#不能为空!")
    @Length(min=0, max=50, message="#positionname#长度需要在0和50之间.")
    private String positionname;

    @Excel(Import=true, Export=true, Title="备注")
    @Length(min=0, max=4000, message="#remark#长度需要在0和4000之间.")
    private String remark;

    private BigDecimal delflag;

    private Date rowtime;

    private BigDecimal rowver;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getPositionname() { 
        return positionname;
    }

    public void setPositionname(String positionname) { 
        this.positionname = positionname;
    }

    public String getRemark() { 
        return remark;
    }

    public void setRemark(String remark) { 
        this.remark = remark;
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