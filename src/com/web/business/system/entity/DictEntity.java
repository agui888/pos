/**
 * author: 谢少华
 * 
 * date: 2014-07-29 10:18
 */
package com.web.business.system.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("DictEntity")
public class DictEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Import=true, Export=true, Title="字典类型")
    @NotEmpty(message="#dicttype#字典类型不能为空!")
    @Length(min=0, max=20, message="#dicttype#字典类型长度需要在0和20之间.")
    private String dicttype;

    @Excel(Import=true, Export=true, Title="代码")
    @NotEmpty(message="#dictcode#代码不能为空!")
    @Length(min=0, max=200, message="#dictcode#代码长度需要在0和200之间.")
    private String dictcode;

    @Excel(Import=true, Export=true, Title="名称")
    @NotEmpty(message="#dictname#名称不能为空!")
    @Length(min=0, max=255, message="#dictname#名称长度需要在0和255之间.")
    private String dictname;

    private Date rowtime;

    private BigDecimal rowver;


    public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getDicttype() { 
        return dicttype;
    }

    public void setDicttype(String dicttype) { 
        this.dicttype = dicttype;
    }

    public String getDictcode() { 
        return dictcode;
    }

    public void setDictcode(String dictcode) { 
        this.dictcode = dictcode;
    }

    public String getDictname() { 
        return dictname;
    }

    public void setDictname(String dictname) { 
        this.dictname = dictname;
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