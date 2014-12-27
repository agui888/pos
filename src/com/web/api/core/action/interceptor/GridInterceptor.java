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
import com.web.api.core.utils.DateUtils;
import com.web.business.system.entity.UserEntity;
import com.web.business.system.service.GridService;

/**
 * No.3 EasyUI拦截器
 * @author Tobin
 */
public class GridInterceptor extends AbstractInterceptor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private GridService gridService;
	
	public String intercept(ActionInvocation invocation) throws Exception {
		Date startDate = new Date();
		
		ActionSupport action = (ActionSupport)invocation.getAction();
		String methodName  = ActionUtils.getActionProxyMethodName(invocation.getProxy());
		
		if (! methodName.equals(Constant.ENTER)) {
			return invocation.invoke();
		}
			
		logger.debug("================================================================");
		logger.debug("No3. 开启 Intercept EasyUI Grid 拦截器! Method:" + methodName);
		
		String menuid = null;
		UserEntity user = (UserEntity)ServletActionContext.getRequest().getSession().getAttribute(Constant.LOGINSESSION);
		if (action instanceof TemplateAction) {
			menuid = ((TemplateAction) action).getMenuid();
			if (menuid != null) {
				logger.debug("No3. 读取 TemplateAction. EasyUI Grid 信息数据......");
				((TemplateAction) action).setEasyGrid(gridService.getGridWidth(menuid, user.getId()));
			}
		} else if (action instanceof StandardAction) {
			menuid = ((StandardAction) action).getMenuid();
			if (menuid != null) {
				logger.debug("No3. 读取 StandardAction. EasyUI Grid 信息数据......");
				((StandardAction) action).setEasyGrid(gridService.getGridWidth(menuid, user.getId()));
			}
		}
		
		logger.debug("No3. 成功通过 Intercept EasyUI Grid 拦截器, 耗时:" + DateUtils.compareDateTime(startDate, new Date()));
		logger.debug("================================================================");
		
		return invocation.invoke();
	}
	
}
