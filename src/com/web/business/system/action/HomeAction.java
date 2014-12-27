package com.web.business.system.action;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.business.system.entity.MenuEntity;
import com.web.business.system.entity.UserEntity;
import com.web.business.system.service.MenuService;
import com.web.business.system.service.ParamService;

public class HomeAction extends StandardAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private ParamService paramService;
	
	public String enter() {
		UserEntity user = (UserEntity)session.getAttribute(Constant.LOGINSESSION);
		
		int usertype = ((BigDecimal)user.getUsertype()).intValue();
		String menutype = null;
		String roleids = user.getRoleids();
		
		if (usertype == 0) {  	     // 应用用户
			menutype = "APP";
		} else if (usertype == 1) {  // 管理用户
			if (user.getUserid().equalsIgnoreCase("admin"))
				menutype = "ADMIN";
			else
				menutype = "SYS";
		}
		
		List<MenuEntity> list = menuService.getHomeMenuList(usertype, menutype, roleids);
		session.setAttribute(Constant.HOMEMENU, list); 
		
		request.setAttribute("sysParam", paramService.get());
		return Constant.ENTER;
	}
	
}
