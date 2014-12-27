/**
 * author: 谢少华
 * 
 * date: 2014-09-19 15:14
 */
package com.web.business.system.entity;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;

@Alias("MenuEntity")
public class MenuEntity implements TEntity<BigDecimal> {

    private static final long serialVersionUID = 1L;

    private BigDecimal rowno;
    
    @Excel(Import=true, Export=true, Title="ID")
    private BigDecimal id;

    @Excel(Import=true, Export=true, Title="SID")
    private BigDecimal sid;

    @Excel(Import=true, Export=true, Title="类型")
    @Length(min=0, max=10, message="#type#类型长度需要在0和10之间.")
    private String type;

    @Excel(Import=true, Export=true, Title="序号")
    private BigDecimal colid;

    @Excel(Import=true, Export=true, Title="菜单名称")
    @Length(min=0, max=50, message="#menu#菜单名称长度需要在0和50之间.")
    private String menu;

    @Excel(Import=true, Export=true, Title="URL")
    @Length(min=0, max=1000, message="#url#URL长度需要在0和1000之间.")
    private String url;

    @Excel(Import=true, Export=true, Title="图标")
    @Length(min=0, max=1000, message="#ico#图标长度需要在0和1000之间.")
    private String ico;
    
    @Excel(Import=true, Export=true, Title="目标图标")
    @Length(min=0, max=1000, message="#dirico#目标图标长度需要在0和1000之间.")
    private String dirico;    

	@Excel(Import=true, Export=true, Title="权限")
    private BigDecimal power;

    @Excel(Import=true, Export=true, Title="可写")
    private BigDecimal write;

    @Excel(Import=true, Export=true, Title="工作流ID")
    private BigDecimal menugroupid;

    @Excel(Import=true, Export=true, Title="工作流模块名称")
    @Length(min=0, max=50, message="#menugroupname#工作流模块名称,长度需要在0和50之间.")
    private String menugroupname;

    @Excel(Import=true, Export=true, Title="描述")
    private String description;

	@Excel(Import=true, Export=true, Title="删除标记")
    private BigDecimal delflag;

	private BigDecimal level;
	
	public BigDecimal getId() { 
        return id;
    }

    public void setId(BigDecimal id) { 
        this.id = id;
    }

    public BigDecimal getSid() { 
        return sid;
    }

    public void setSid(BigDecimal sid) { 
        this.sid = sid;
    }

    public String getType() { 
        return type;
    }

    public void setType(String type) { 
        this.type = type;
    }

    public BigDecimal getColid() { 
        return colid;
    }

    public void setColid(BigDecimal colid) { 
        this.colid = colid;
    }

    public String getMenu() { 
        return menu;
    }

    public void setMenu(String menu) { 
        this.menu = menu;
    }

    public String getUrl() { 
        return url;
    }

    public void setUrl(String url) { 
        this.url = url;
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

    public BigDecimal getMenugroupid() { 
        return menugroupid;
    }

    public void setMenugroupid(BigDecimal menugroupid) { 
        this.menugroupid = menugroupid;
    }

    public String getMenugroupname() { 
        return menugroupname;
    }

    public void setMenugroupname(String menugroupname) { 
        this.menugroupname = menugroupname;
    }

    public BigDecimal getDelflag() { 
        return delflag;
    }

    public void setDelflag(BigDecimal delflag) { 
        this.delflag = delflag;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }
    
    public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
    public BigDecimal getLevel() {
		return level;
	}

	public void setLevel(BigDecimal level) {
		this.level = level;
	}

    public String getDirico() {
		return dirico;
	}

	public void setDirico(String dirico) {
		this.dirico = dirico;
	}
	
}