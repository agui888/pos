package com.web.business.system.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.entity.UserEntity;
import com.web.business.system.service.BaseUserService;
import com.web.business.system.service.ParamService;

public class LoginAction extends StandardAction {

	private static final long serialVersionUID = 1L;
	
	private String userid;
	
	private String password;
	
	private String message;
	
	private String codeKey = "LOGINVERIFICATION";
	
	@Autowired
	private ParamService paramService;
	
	@Autowired
	private BaseUserService baseUserService;
	
	public String enter() {
		return INPUT;
	}
	
	public String on() {
		String SKey = BaseUtils.ifNull((String)session.getAttribute(this.getCodeKey()), "");
		String IKey = BaseUtils.ifNull(request.getParameter("key"), "");
		if (!IKey.equalsIgnoreCase(SKey)) {
 			this.setMessage("验证码错误!");
			session.removeAttribute(getCodeKey());
			// return INPUT;
		}
		
		UserEntity user = baseUserService.login(getUserid(), getPassword());
		if (BaseUtils.isNotEmpty(user.getMessage())) {
			this.setMessage(user.getMessage());
			return INPUT;
		} else {
			session.setAttribute(Constant.LOGINSESSION, user);
			this.getParamService().visits();
			return SUCCESS;
		}
	}
	
	public String off() {
		session.removeAttribute(Constant.LOGINSESSION);
		session.removeAttribute(getCodeKey());
		return INPUT;
	}
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getCodeKey() {
		return codeKey;
	}

	public void setCodeKey(String codeKey) {
		this.codeKey = codeKey;
	}
	
	public ParamService getParamService() {
		return paramService;
	}

	public void setParamService(ParamService paramService) {
		this.paramService = paramService;
	}

}
