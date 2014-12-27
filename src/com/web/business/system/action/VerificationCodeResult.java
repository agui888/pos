package com.web.business.system.action;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;

final public class VerificationCodeResult implements Result {

	/** The default parameter */
    public static final String DEFAULT_PARAM = "location";
    
	private static final long serialVersionUID = -8259537730281638926L;
	
	public void execute(ActionInvocation arg0) throws Exception {
		VerificationCodeAction action =(VerificationCodeAction)arg0.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
		
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		
		response.setContentType(action.getContentType());
		response.setContentLength(action.getContentLength());
		ServletOutputStream sos = response.getOutputStream();
		sos.write(action.getImageInBytes());
		sos.close();
	}
	
}
