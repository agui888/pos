/**
 * author: 谢少华
 * 
 * date: 2014-06-24 12:18
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("GridEntity")
public class GridEntity implements TEntity<BigDecimal> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private BigDecimal id;

    @Excel(Import=true, Export=true, Title="用户ID-Java")
    private String userid;

    @Excel(Import=true, Export=true, Title="Form窗口Tag-Java(即MENUID)")
    private BigDecimal formtag;

    @Excel(Import=true, Export=true, Title="Form窗口中的GridTag-Java(即GridID)")
    private String gridtag;

    @Excel(Import=true, Export=true, Title="列名-Java")
    private String columnname;

    @Excel(Import=true, Export=true, Title="列头")
    private BigDecimal band;

    @Excel(Import=true, Export=true, Title="序列")
    private BigDecimal colid;

    @Excel(Import=true, Export=true, Title="宽度-Java")
    private BigDecimal width;

    @Excel(Import=true, Export=true, Title="默认值")
    private String defaultvalue;

    @Excel(Import=true, Export=true, Title="是否显示")
    private BigDecimal isshow;

    @Excel(Import=true, Export=true, Title="预警范围(如数字范围'20..30'或字符'张三')")
    private String warning;

    @Excel(Import=true, Export=true, Title="字体颜色")
    private String fontcolor;

    @Excel(Import=true, Export=true, Title="背景颜色")
    private String backgroundcolor;

    @Excel(Import=true, Export=true, Title="闪烁")
    private BigDecimal isflicker;


    public BigDecimal getId() { 
        return id;
    }

    public void setId(BigDecimal id) { 
        this.id = id;
    }

    public String getUserid() { 
        return userid;
    }

    public void setUserid(String userid) { 
        this.userid = userid;
    }

    public BigDecimal getFormtag() { 
        return formtag;
    }

    public void setFormtag(BigDecimal formtag) { 
        this.formtag = formtag;
    }

    public String getGridtag() { 
        return gridtag;
    }

    public void setGridtag(String gridtag) { 
        this.gridtag = gridtag;
    }

    public String getColumnname() { 
        return columnname;
    }

    public void setColumnname(String columnname) { 
        this.columnname = columnname;
    }

    public BigDecimal getBand() { 
        return band;
    }

    public void setBand(BigDecimal band) { 
        this.band = band;
    }

    public BigDecimal getColid() { 
        return colid;
    }

    public void setColid(BigDecimal colid) { 
        this.colid = colid;
    }

    public BigDecimal getWidth() { 
        return width;
    }

    public void setWidth(BigDecimal width) { 
        this.width = width;
    }

    public String getDefaultvalue() { 
        return defaultvalue;
    }

    public void setDefaultvalue(String defaultvalue) { 
        this.defaultvalue = defaultvalue;
    }

    public BigDecimal getIsshow() { 
        return isshow;
    }

    public void setIsshow(BigDecimal isshow) { 
        this.isshow = isshow;
    }

    public String getWarning() { 
        return warning;
    }

    public void setWarning(String warning) { 
        this.warning = warning;
    }

    public String getFontcolor() { 
        return fontcolor;
    }

    public void setFontcolor(String fontcolor) { 
        this.fontcolor = fontcolor;
    }

    public String getBackgroundcolor() { 
        return backgroundcolor;
    }

    public void setBackgroundcolor(String backgroundcolor) { 
        this.backgroundcolor = backgroundcolor;
    }

    public BigDecimal getIsflicker() { 
        return isflicker;
    }

    public void setIsflicker(BigDecimal isflicker) { 
        this.isflicker = isflicker;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }

}