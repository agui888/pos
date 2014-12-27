/**
 * author: 谢少华
 * 
 * date: 2014-11-27 14:25
 */
package com.web.business.system.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.hibernate.validator.constraints.Length;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.DateUtils;

@Alias("LogsEntity")
public class LogsEntity implements TEntity<String> {

    private static final long serialVersionUID = 1L;

    @Excel(Export=true, Title="序列")
    private BigDecimal rowno;

    private String id;

    @Excel(Import=true, Export=true, Title="IP地址")
    @Length(min=0, max=50, message="#userip#IP地址长度需要在0和50之间.")
    private String userip;

    @Excel(Import=true, Export=true, Title="URL")
    @Length(min=0, max=4000, message="#httpurl#URL长度需要在0和4000之间.")
    private String httpurl;

    @Excel(Import=true, Export=true, Title="用户ID")
    @Length(min=0, max=20, message="#userid#用户ID长度需要在0和20之间.")
    private String userid;

    @Excel(Import=true, Export=true, Title="用户名")
    @Length(min=0, max=50, message="#username#用户名长度需要在0和50之间.")
    private String username;

    @Excel(Import=true, Export=true, Title="记录时间")
    private Date startdatetime;

    @Excel(Import=true, Export=true, Title="结束时间")
    private Date enddatetime;

    @Excel(Import=true, Export=true, Title="菜单")
    @Length(min=0, max=50, message="#menuid#菜单长度需要在0和50之间.")
    private String menuid;

    @Excel(Import=true, Export=true, Title="类名与方法")
    @Length(min=0, max=1000, message="#classes#类名与方法长度需要在0和1000之间.")
    private String classes;

	@Excel(Import=true, Export=true, Title="被织入对象")
    @Length(min=0, max=1000, message="#aroundobject#被织入对象长度需要在0和1000之间.")
    private String aroundobject;

    @Excel(Import=true, Export=true, Title="参数")
    private String objectparam;

    @Excel(Import=true, Export=true, Title="日志记录")
    private String httpparam;

    @Excel(Import=true, Export=true, Title="返回值")
    private String returnparam;
    
    @Excel(Import=true, Export=true, Title="方法")
    @Length(min=0, max=255, message="#method#方法长度需要在0和255之间.")
    private String method;
    
	private String starttime;

    private String endtime;
    
    private String usetime;
    
	private String searchstarttime;
    
	private String searchendtime;

	public String getId() { 
        return id;
    }

    public void setId(String id) { 
        this.id = id;
    }

    public String getUserip() { 
        return userip;
    }

    public void setUserip(String userip) { 
        this.userip = userip;
    }

    public String getHttpurl() { 
        return httpurl;
    }

    public void setHttpurl(String httpurl) { 
        this.httpurl = httpurl;
    }

    public String getUserid() { 
        return userid;
    }

    public void setUserid(String userid) { 
        this.userid = userid;
    }

    public String getUsername() { 
        return username;
    }

    public void setUsername(String username) { 
        this.username = username;
    }

    public Date getStartdatetime() { 
        return startdatetime;
    }

    public void setStartdatetime(Date startdatetime) { 
        this.startdatetime = startdatetime;
    }

    public Date getEnddatetime() { 
        return enddatetime;
    }

    public void setEnddatetime(Date enddatetime) { 
        this.enddatetime = enddatetime;
    }

    public String getMenuid() { 
        return menuid;
    }

    public void setMenuid(String menuid) { 
        this.menuid = menuid;
    }

    public String getMethod() { 
        return method;
    }

    public void setMethod(String method) { 
        this.method = method;
    }

    public String getAroundobject() { 
        return aroundobject;
    }

    public void setAroundobject(String aroundobject) { 
        this.aroundobject = aroundobject;
    }

    public String getObjectparam() { 
        return objectparam;
    }

    public void setObjectparam(String objectparam) { 
        this.objectparam = objectparam;
    }

    public String getHttpparam() { 
        return httpparam;
    }

    public void setHttpparam(String httpparam) { 
        this.httpparam = httpparam;
    }

    public String getReturnparam() { 
        return returnparam;
    }

    public void setReturnparam(String returnparam) { 
        this.returnparam = returnparam;
    }

    public BigDecimal getRowno() { 
        return rowno;
    }

    public void setRowno(BigDecimal rowno) { 
        this.rowno = rowno;
    }
    
    public String getUsetime() {
    	usetime = DateUtils.compareDateTime(this.getStartdatetime(), this.getEnddatetime());
		return usetime;
	}

	public void setUsetime(String usetime) {
		this.usetime = usetime;
	}
	
    public String getStarttime() {
    	if (BaseUtils.isNotEmpty(this.getStartdatetime()))
    		starttime = DateUtils.dateTimeToStr(this.getStartdatetime());
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		if (BaseUtils.isNotEmpty(this.getEnddatetime()))
			endtime = DateUtils.dateTimeToStr(this.getEnddatetime());
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	
    public String getSearchstarttime() {
		return searchstarttime;
	}

	public void setSearchstarttime(String searchstarttime) {
		this.searchstarttime = searchstarttime;
	}

	public String getSearchendtime() {
		return searchendtime;
	}

	public void setSearchendtime(String searchendtime) {
		this.searchendtime = searchendtime;
	}

    public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}
	
	@Override
	public String toString() {
		return "LogsEntity [rowno=" + rowno + ", id=" + id + ", userip="
				+ userip + ", httpurl=" + httpurl + ", userid=" + userid
				+ ", username=" + username + ", startdatetime=" + startdatetime
				+ ", enddatetime=" + enddatetime + ", menuid=" + menuid
				+ ", method=" + method + ", aroundobject=" + aroundobject
				+ ", objectparam=" + objectparam + ", httpparam=" + httpparam
				+ ", returnparam=" + returnparam + "]";
	}
   
}