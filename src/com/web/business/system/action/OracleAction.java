package com.web.business.system.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.global.Constant;
import com.web.business.system.service.OracleService;

@Menu(menuid="2010")
public class OracleAction extends StandardAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private OracleService oracleService;

    public OracleService getOracleService() {
		return oracleService;
	}

	public void setOracleService(OracleService oracleService) {
		this.oracleService = oracleService;
	}

	public OracleAction() {
		this.setGoJsp("/web/business/system/oracle/view.jsp");
	}
	
	/**
	 * 重写进入事件
	 */
	public String enter() {
		request.setAttribute("oracleVersion", oracleService.getOracleVersion());
		request.setAttribute("oracleUser", oracleService.oracleUser());
		request.setAttribute("oracleUserTableSpace", oracleService.getOracleUserTableSpace());
		request.setAttribute("oracleBlock", oracleService.getBlock());
		return Constant.ENTER;
	}
	
	public String rolepower() {
		request.setAttribute("oracleUserRolePrivs", oracleService.getOracleUserRolePrivs());
		request.setAttribute("oracleUserSysPrivs", oracleService.getOracleUserSysPrivs());
		return "rolepower";
	}

	public String tablespace() {
		request.setAttribute("oracleTableSpace", oracleService.getOracleTableSpace());
		return "tablespace";
	}
	
	public String pruge() {
		oracleService.execPurge();
		return this.tablesize();
	}
	
	public String filespace() {
		request.setAttribute("oracleFileSpace", oracleService.getOracleFileSpace());
		return "filespace";
	}

	public String tablesize() {
		request.setAttribute("oracleTableSize", oracleService.getOracleTableSize());
		return "tablesize";
	}
	
	public String session() {
		request.setAttribute("oracleProcesses", oracleService.getProcesses());
		request.setAttribute("oracleSession", oracleService.getOracleSession());
		return "session";
	}
	
	public String parameter() {
		request.setAttribute("oracleParameter", oracleService.getOracleParameter());
		return "parameter";
	}
	
	public String pga() {
		request.setAttribute("oraclePGA", oracleService.getOraclePGA());
		return "pga";
	}
	
	public String sga() {
		request.setAttribute("oracleSGA", oracleService.getOracleSGA());
		return "sga";
	}
	
}
