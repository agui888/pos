package com.web.api.core.action.interceptor;

import java.io.Serializable;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.global.Constant;
import com.web.api.core.power.PowerBean;
import com.web.api.core.utils.DateUtils;
import com.web.business.system.entity.UserEntity;
import com.web.business.system.service.UserPowerService;

public class PowerInterceptor extends AbstractInterceptor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private ActionSupport action = null;
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private UserPowerService userPowerService;
	
	/**
	 * No.4 EasyUI拦截器
	 * @throws Exception 
	 */
	final public String intercept(ActionInvocation invocation) throws Exception {
		Date startDate = new Date();
		
		action = (ActionSupport)invocation.getAction();
		String methodName  = ActionUtils.getActionProxyMethodName(invocation.getProxy());
		
		ServletActionContext.getRequest().setAttribute(Constant.WRITEPOWER, "false");
		
		if (! methodName.equals(Constant.LIST)) {
			return invocation.invoke();
		}
		
		logger.debug("================================================================");
		logger.debug("No4. 开启 Intercept 访问权限拦截器! Method:" + methodName);
		
		String menuid = null;
		if (action instanceof TemplateAction) {
			menuid = ((TemplateAction) action).getMenuid();
		} else if (action instanceof StandardAction) {
			menuid = ((StandardAction) action).getMenuid();
		}
		
		String result = this.accessPower(menuid);
		if (result != null)
			return result;
		
		logger.debug("No4. 成功通过 Intercept 访问权限拦截器, 耗时:" + DateUtils.compareDateTime(startDate, new Date()));
		logger.debug("================================================================");
		
		return invocation.invoke();
	}
	
	private String accessPower(String menuid) {
		PowerBean powerBean = null;
		UserEntity user = (UserEntity)ServletActionContext.getRequest().getSession().getAttribute(Constant.LOGINSESSION);
		if (user != null && user.getUserid().equalsIgnoreCase("ADMIN"))
			return null;
		
		if (user != null && menuid != null) {
			// a. 访问数据库,进行权限判断
			logger.debug("No4. 读取数据库信息,检查访问权限......");
			powerBean = userPowerService.accessPower(user.getUsertype().toString(), user.getRoleids(), menuid);
			if ((powerBean != null) && (powerBean.getPower()) && (powerBean.getIspower() == false)) {
				logger.debug("No4. 因权限不够, 无法继续执行.");
				return Constant.NOPOWER;
			}
			
			// b. 模块数据修改权限, 用于JSP页面的控制
			ServletActionContext.getRequest().setAttribute(Constant.WRITEPOWER, "false");
			if (powerBean != null && powerBean.getPower() && !powerBean.getIswrite())
				ServletActionContext.getRequest().setAttribute(Constant.WRITEPOWER, "true");
			
			// c. 读取RuleSQL权限
			String sql = userPowerService.accessRuleSQL(user.getUsertype().toString(), user.getRoleids(), menuid);
			
			// d. 设计到Action对象中
			if (action instanceof TemplateAction) {
				((TemplateAction) action).extendPortal.setPowerRuleSQL(sql);
			} else if (action instanceof StandardAction) {
				((StandardAction) action).extendPortal.setPowerRuleSQL(sql);
			}
			
			logger.debug("No4. 规则RuleSQL:" + sql);
			logger.debug("No4. 权限验证通过.");
		}
		
		return null;
	}
	
	
}
