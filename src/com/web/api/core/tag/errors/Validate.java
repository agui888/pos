package com.web.api.core.tag.errors;

import java.io.IOException;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.web.api.core.utils.BaseUtils;

public class Validate extends SimpleTagSupport {
	
	private String value;
	
	public String getValue() {
		return this.value;
	}
	
	public void setValue(String value) {
		this.value = value;
	}
	
	public void doTag() throws JspTagException,IOException {
		String str = "";
		String temp = "";
		if (BaseUtils.isNotEmpty(value)) {
			temp = BaseUtils.replaceStr(value, "[", "");
			temp = BaseUtils.replaceStr(temp, "]", "");
			try {
				str = "<span class='RText'>" + temp + "</span>";
		    } catch (Exception e) {
		    	throw new JspTagException("Errors: " + e.toString());
		    }
		}
		getJspContext().getOut().write(str);
	}

}
