package com.web.api.core.action.interceptor;

import java.io.Serializable;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.utils.DateUtils;

/**
 * No.2 基本变量信息拦截器
 * @author Tobin
 */
public class BaseInterceptor extends AbstractInterceptor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	public String intercept(ActionInvocation invocation) throws Exception {
		Date startDate = new Date();
		
		ActionSupport action = (ActionSupport)invocation.getAction();
		
		String remoteIP    = ActionUtils.getRemoteIP(ServletActionContext.getRequest());
		String packageName = ActionUtils.getActionPackageName(action.getClass());
		String methodName  = ActionUtils.getActionProxyMethodName(invocation.getProxy());
		String actionURI   = ActionUtils.getApplicationURI(ServletActionContext.getRequest());
		String actionURL   = ActionUtils.getApplicationURL(ServletActionContext.getRequest());
		String path        = ActionUtils.getApplicationPath(ServletActionContext.getRequest());
		
		ServletActionContext.getRequest().setAttribute("remoteIP", remoteIP);
		ServletActionContext.getRequest().setAttribute("package", packageName);
		ServletActionContext.getRequest().setAttribute("method", methodName);
		ServletActionContext.getRequest().setAttribute("URI", actionURI);
		ServletActionContext.getRequest().setAttribute("URL", actionURL);
		ServletActionContext.getRequest().getSession().setAttribute("path", path);

		logger.debug("================================================================");
		logger.debug("No1. 开启 Intercept Base 基本变量拦截器! Method:" + methodName);
		
		if (action instanceof TemplateAction) {
			((TemplateAction) action).instance();
			logger.debug("No1. 继承类名 TemplateAction:" + action.getClass().getName());
		} else if (action instanceof StandardAction) {
			((StandardAction) action).instance();
			logger.debug("No1. 继承类名 StandardAction:" + action.getClass().getName());
		}
		
		logger.debug("No1. 成功通过 Intercept Base 基本变量拦截器, 耗时:" + DateUtils.compareDateTime(startDate, new Date()));
		logger.debug("================================================================");
		
		return invocation.invoke();	
	}
	
}
