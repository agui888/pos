/**
 * author: 谢少华
 * 
 * date: 2014-06-24 12:18
 */
package com.web.business.system.action;

import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.standard.StandardAction;
import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.entity.PageEntity;
import com.web.api.core.global.Constant;
import com.web.business.system.entity.GridEntity;
import com.web.business.system.service.GridService;

public class GridAction extends StandardAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private GridService gridService;
	
	private GridEntity gridEntity;
	
	private Object listJson;
	
	public GridAction() {
		this.setGoJsp("/web/business/system/grid/list.jsp");
	}
	
	public GridService getGridService() {
		return gridService;
	}

	public void setGridService(GridService gridService) {
		this.gridService = gridService;
	}

	public GridEntity getGridEntity() {
		return gridEntity;
	}

	public void setGridEntity(GridEntity gridEntity) {
		this.gridEntity = gridEntity;
	}
	
	public Object getListJson() {
		return listJson;
	}

	public void setListJson(Object listJson) {
		this.listJson = listJson;
	}
	
	/**
	 * 进入事件
	 * @return
	 */
	public String enter() {
		return Constant.ENTER;
	}
	
	/**
	 * 删除所有
	 * @return
	 */
	public String truncate() {
		gridService.truncate();
		return Constant.ENTER;
	}	
	
	/**
	 * 列表事件
	 * @return
	 */
	public String list() {
		Map<String, Object> sqlParam = extendPortal.builderSearchAndOrderHashMap(gridEntity, "id", Constant.DESC);
		PageEntity pageEntity = extendPortal.getSessionPage(getPageSize());
		
		JSONObject jsonObject = gridService.list(sqlParam, pageEntity);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}
	
	/**
	 * 普通查询
	 * @return
	 */
	public String search() {
		extendPortal.removeSessionParameter();
		
		Map<String, Object> entityMap = ActionUtils.converterMapEntity(gridEntity);
		extendPortal.setSessionSearch(entityMap);
		return this.list();
	}
	
	/**
	 * 分页事件
	 * @return
	 */
	public String page() {
		extendPortal.setSessionPage(getPageParam());
		return this.list();
	}

	/**
	 * Ajax 自动保存Grid宽度
	 */
	public void width() {
		String formtag = request.getParameter("formtag");
		String gridtag = request.getParameter("gridtag");
		String userid = request.getParameter("userid");
		String columnname = request.getParameter("columnname");
		String width = request.getParameter("width");
		gridService.setGridWidth(formtag, gridtag, userid, columnname, width);
	}

}
