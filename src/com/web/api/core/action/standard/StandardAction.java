package com.web.api.core.action.standard;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.web.api.core.action.extend.ExtendExcel;
import com.web.api.core.action.extend.ExtendPortal;
import com.web.api.core.entity.PageEntity;
import com.web.api.core.global.Constant;
import com.web.business.system.entity.UserEntity;

/**
 * 标准 Action
 * 
 * @author Tobin
 *
 */
public class StandardAction extends ActionSupport implements 
	ServletRequestAware, ServletResponseAware {
	
	private static final long serialVersionUID = 1L;
	
	private int pageSize = 20;

	// Menu模块唯一ID
	private String menuid;
		
	// 主表单条记录选择ID
	private String selectid;
	
	// 前端分页参数 Entity
	private PageEntity pageParam;
	
	
	// Bootstrap 跳转页面
	private String goJsp;
	

	public HttpServletRequest request;
	
	public HttpServletResponse response;
	
	public HttpSession session;
	
	
	
	// 基本功能方法
	public ExtendPortal extendPortal;
	
	// Excel基本方法
	public ExtendExcel extendExcel;
	
	
	
	// EasyGrid变量
	private List<Map<String, Object>> easyGrid;
	
	
	/**
	 * 由拦截器实例化
	 */
	public void instance() {
		extendPortal = new ExtendPortal(request, response, menuid);
		extendExcel = new ExtendExcel();
	}
	
	/**
	 * 获取  Session UserEntity
	 */
	protected UserEntity getSessionUserEntity() {
		return (UserEntity)session.getAttribute(Constant.LOGINSESSION);
	}
	
	/**
	 * 设置JSP对象
	 */
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
	}
	
	/**
	 * 设置JSP对象
	 */
	@Override
	public void setServletResponse(HttpServletResponse response) {  
        this.response=response;  
    }
	
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public String getMenuid() {
		return menuid;
	}

	public String getSelectid() {
		return selectid;
	}

	public PageEntity getPageParam() {
		return pageParam;
	}

	public void setMenuid(String menuid) {
		this.menuid = menuid;
	}

	public void setSelectid(String selectid) {
		this.selectid = selectid;
	}

	public void setPageParam(PageEntity pageParam) {
		this.pageParam = pageParam;
	}

	public List<Map<String, Object>> getEasyGrid() {
		return easyGrid;
	}

	public void setEasyGrid(List<Map<String, Object>> easyGrid) {
		this.easyGrid = easyGrid;
	}
	
	public String getGoJsp() {
		return goJsp;
	}

	public void setGoJsp(String goJsp) {
		this.goJsp = goJsp;
	}

}
