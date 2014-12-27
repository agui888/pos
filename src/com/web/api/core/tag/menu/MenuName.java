package com.web.api.core.tag.menu;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.opensymphony.xwork2.ActionContext;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.entity.MenuEntity;

public class MenuName extends SimpleTagSupport {
	
	private String menuid;
	
	public String getMenuid() {
		return menuid;
	}

	public void setMenuid(String menuid) {
		this.menuid = menuid;
	}

	@SuppressWarnings("unchecked")
	public void doTag() throws JspTagException,IOException {
		if (BaseUtils.isEmpty(menuid))
			return;
		
		List<MenuEntity> detailList  = (List<MenuEntity>)ActionContext.getContext().getSession().get(Constant.HOMEMENU);
		
		for (int i = 0; i < detailList.size(); i ++) {
			MenuEntity me = (MenuEntity)detailList.get(i);
			int temp = new Integer(menuid);
			if (me.getId().intValue() == temp) {
				getJspContext().getOut().write(me.getMenu());
				return;
			}
		}
	}

}
