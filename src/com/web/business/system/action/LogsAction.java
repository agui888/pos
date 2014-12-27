/**
 * author: 谢少华
 * 
 * date: 2014-11-27 14:25
 */
package com.web.business.system.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.entity.PageEntity;
import com.web.api.core.global.Constant;
import com.web.business.system.entity.LogsEntity;
import com.web.business.system.service.LogsService;

@Menu(menuid = "2008")
public class LogsAction extends StandardAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    private LogsService logsService;
    
    private LogsEntity logsEntity;
    
    private Object listJson;

    public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}

	public LogsService getLogsService() {
        return logsService;
    }

    public void setLogsService(LogsService logsService) {
        this.logsService = logsService;
    }

    public LogsEntity getLogsEntity() {
        return logsEntity;
    }

    public void setLogsEntity(LogsEntity logsEntity) {
        this.logsEntity = logsEntity;
    }
    
    /**
	 * 进入事件
	 * @return
	 */
	public String enter() {
		this.setPageSize(50);
		this.setGoJsp("/web/business/system/logs/list.jsp");
		
		extendPortal.removeSessionParameter();
		return Constant.ENTER;
	}
	
	/**
	 * 列表事件
	 * @return
	 */
	public String list() {
		Map<String, Object> sqlParam = extendPortal.builderSearchAndOrderHashMap(logsEntity, "id", "desc");
		PageEntity pageEntity = extendPortal.getSessionPage(this.getPageSize());
		
		JSONObject jsonObject = logsService.list(sqlParam, pageEntity);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}
	
	/**
	 * 普通查询
	 * @return
	 */
	public String search() {
		extendPortal.removeSessionParameter();
		
		Map<String, Object> entityMap = ActionUtils.converterMapEntity(logsEntity);
		extendPortal.setSessionSearch(entityMap);
		return this.list();
	}
	
	/**
	 * 浏览事件
	 * @return
	 */
	public String view() {
		this.setGoJsp("/web/business/system/logs/edit.jsp");
		this.setLogsEntity(logsService.selectById(this.getSelectid()));
		return Constant.VIEW;
	}
	
	/**
	 * 返回
	 * @return
	 */
	public String cancel() {
		this.setGoJsp("/web/business/system/logs/list.jsp");
		return Constant.ENTER;
	}
	
	/**
	 * 分页事件
	 * @return
	 */
	public String page() {
		extendPortal.setSessionPage(getPageParam());
		return this.list();
	}

}