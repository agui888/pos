/**
 * author: 谢少华
 * 
 * date: 2014-07-01 09:46
 */
package com.web.business.system.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateDetailEntity;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.JsonUtils;
import com.web.business.system.entity.FlowDetailEntity;
import com.web.business.system.entity.FlowEntity;
import com.web.business.system.service.FlowService;
import com.web.business.system.service.MenuService;

@Menu(menuid = "2004")
public class FlowAction extends TemplateAction {

    private static final long serialVersionUID = 1L;

	@Autowired
	private MenuService menuService;	
	
    @Autowired
    @TemplateService
    private FlowService flowService;

    @TemplateEntity
    private FlowEntity flowEntity;
    
    @TemplateDetailEntity
    private List<FlowDetailEntity> flowDetailEntity = new ArrayList<FlowDetailEntity>();
    
	public FlowAction() {
		this.setGoListJsp("/web/business/system/flow/list.jsp");
		this.setGoEditJsp("/web/business/system/flow/edit.jsp");
	}

	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	
    public FlowService getFlowService() {
        return flowService;
    }

    public void setFlowService(FlowService flowService) {
        this.flowService = flowService;
    }

    public FlowEntity getFlowEntity() {
        return flowEntity;
    }

    public void setFlowEntity(FlowEntity flowEntity) {
        this.flowEntity = flowEntity;
    }
    
    public List<FlowDetailEntity> getFlowDetailEntity() {
        return flowDetailEntity;
    }

    public void setFlowDetailEntity(
            List<FlowDetailEntity> flowDetailEntity) {
        this.flowDetailEntity = flowDetailEntity;
    }
    
	/**
	 * 由拦截器实例化
	 */
    @Override
	public void instance() {
		super.instance();
		this.setDefaultSortOrder("colid", Constant.ASC);
	}
    
	/**
	 * 新建事件
	 */
	@Override
	public String append() {
		this.setGoJsp(this.getGoEditJsp());
		
		// 初始化
		flowService.synchronizationMenu();
		List<Map<String, Object>> list = menuService.getMenuGroupList();
		for (Map<String, Object> map : list) {
			FlowDetailEntity fd = new FlowDetailEntity();
			fd.setId(null);
			fd.setPid(null);
			fd.setMenugroupid((BigDecimal) map.get("MENUGROUPID"));
			fd.setMenugroupname((String) map.get("MENUGROUPNAME"));
			flowDetailEntity.add(fd);
		}

		return Constant.APPEND;
	}
	
	/**
	 * 修改事件
	 */
	@Override
	public String modify() {
		// 初始化
		flowService.synchronizationMenu();
		super.modify();
		
		List<Map<String, Object>> list = menuService.getMenuGroupList();
		for (Map<String, Object> map : list) {
			String menugroupid = ((BigDecimal) map.get("MENUGROUPID")).toString();
			if (flowService.existsDetail(this.getSelectid(), menugroupid)) {
				FlowDetailEntity fd = new FlowDetailEntity();
				fd.setId(null);
				fd.setPid(null);
				fd.setMenugroupid((BigDecimal) map.get("MENUGROUPID"));
				fd.setMenugroupname((String) map.get("MENUGROUPNAME"));
				flowDetailEntity.add(fd);
			}
		}

		return Constant.MODIFY;
	}
	
	/**
	 *  提供给“职称管理”模块下拉使用的  JSON
	 */
	public void nodelist() throws IOException {
		List<Map<String, Object>> list = flowService.getComboList();
		String menuJson = JsonUtils.getTreeJsonString(list);
		
		HttpServletResponse response = ServletActionContext.getResponse();  
	    response.setContentType("text/html;charset=utf-8");  
	    PrintWriter out = response.getWriter();  
	    out.println(menuJson);
	    out.flush();
	    out.close();
	}

}