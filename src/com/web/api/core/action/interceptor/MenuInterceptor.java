package com.web.api.core.action.interceptor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.global.Cache;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.DateUtils;

/**
 * No.1 菜单拦截器
 * @author Tobin
 */
public class MenuInterceptor extends AbstractInterceptor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	public String intercept(ActionInvocation invocation) throws Exception {
		Date startDate = new Date();
		
		ActionSupport action = (ActionSupport)invocation.getAction();
		String methodName  = ActionUtils.getActionProxyMethodName(invocation.getProxy());
		
		logger.debug("================================================================");
		logger.debug("No2. 开启 Intercept Menu 拦截器! Method:" + methodName);
		
		// 1. 检查 MenuID 值
		String menuid = null;
		if (action instanceof TemplateAction) {
			menuid = ((TemplateAction) action).getMenuid();
		} else if (action instanceof StandardAction) {
			menuid = ((StandardAction) action).getMenuid();
		}
		
		if (menuid != null) {
			Menu menu = action.getClass().getAnnotation(Menu.class);
			if (menu != null) {
				String[] id = menu.menuid().split(",");
				if(BaseUtils.arrayExists(id, menuid) < 0) {
					logger.error("No2. 非法  MenuID: " + menuid + " 值, 请检查 URL 值与 ActionClass 值.");
					return Constant.NOPOWER;
				}
			}
		}
		
		// 2. 验证是否需要向下走
		String gotoAction = actionSkip(action);
		if (BaseUtils.isNotEmpty(gotoAction)) {
			logger.debug("No2. 拒绝访问, GotoAction:" + gotoAction);
			return gotoAction;
		}
		
		logger.debug("No2. 成功通过 Intercept Menu 拦截器, 耗时:" + DateUtils.compareDateTime(startDate, new Date()));
		logger.debug("================================================================");
		
		return invocation.invoke();
	}
	
	private String actionSkip(ActionSupport action) {
		boolean skip = false;
		
		// a. 释放的  ActionClass, 将 "com.web.business.system.action.DemoAction" 的的名称转换为  "DemoAction"
		String className = action.getClass().getName();
		String actionClassName = className.substring(className.lastIndexOf(".") + 1);		
		List<String> interceptorActionClass = Cache.strutsClassInterceptor;
		for (String name : interceptorActionClass) 
			if (actionClassName.equals(name)) {
				skip = true;
				break;
			}
		
		// b. 释放的  ActionClass Method, 将  "/system/demo/demo_enter.action" 地址转换成  "demo_enter.action"
		String URI = ServletActionContext.getRequest().getRequestURI();
		String actionMethodName = URI.substring(URI.lastIndexOf("/")+1, URI.length());	
		List<String> interceptorActionMethod = Cache.strutsMethodInterceptor;
		if (skip == false) 
			for (String name : interceptorActionMethod) 
				if (actionMethodName.equals(name)) {
					skip = true;
					break;
				}

		// c. 检查是否 Session 超时
		if (skip == false) {
			if (ServletActionContext.getRequest().getSession().getAttribute(Constant.LOGINSESSION) == null)
				return Constant.OVERTIME;
		}
		
		return null;
	}
	
}
