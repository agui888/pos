/**
 * author: 谢少华
 * 
 * date: 2014-12-04 09:12
 */
package com.guime.base.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("CityEntity")
public class CityEntity implements TEntity<BigDecimal> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private BigDecimal id;

    @Excel(Import=true, Export=true, Title="父ID")
    private BigDecimal pid;
    
	private BigDecimal _parentId;

	@Excel(Import=true, Export=true, Title="地区")
    @NotEmpty(message="#cityname#地区不能为空!")
    @Length(min=0, max=50, message="#cityname#地区长度需要在0和50之间.")
    private String cityname;

    @Excel(Import=true, Export=true, Title="序列")
    private BigDecimal colid;

    private BigDecimal delflag;

    private Date rowtime;

    private BigDecimal rowver;


    public BigDecimal getId() { 
        return id;
    }

    public void setId(BigDecimal id) { 
        this.id = id;
    }

    public BigDecimal getPid() { 
        return pid;
    }

    public void setPid(BigDecimal pid) { 
        this.pid = pid;
    }

    public String getCityname() { 
        return cityname;
    }

    public void setCityname(String cityname) { 
        this.cityname = cityname;
    }

    public BigDecimal getColid() { 
        return colid;
    }

    public void setColid(BigDecimal colid) { 
        this.colid = colid;
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
    
    public BigDecimal get_parentId() {
    	_parentId = pid;
		return _parentId;
	}

	public void set_parentId(BigDecimal _parentId) {
		this._parentId = _parentId;
	}

}