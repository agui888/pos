/**
 * author: 谢少华
 * 
 * date: 2014-12-05 16:32
 */
package com.guime.base.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.action.utils.ValidatorUtils;
import com.web.api.core.exception.ActionException;
import com.web.api.core.global.Constant;
import com.guime.base.entity.ServerEntity;
import com.guime.base.entity.StoreEntity;
import com.guime.base.service.ServerService;
import com.guime.base.service.StoreService;

@Menu(menuid = "5005")
public class StoreAction extends TemplateAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    @TemplateService
    private StoreService storeService;

    @TemplateEntity
    private StoreEntity storeEntity;
    
    @Autowired
    private ServerService serverService;
    
    private List<ServerEntity> serverList;
    
    public List<ServerEntity> getServerList() {
		return serverList;
	}

	public void setServerList(List<ServerEntity> serverList) {
		this.serverList = serverList;
	}

	public ServerService getServerService() {
		return serverService;
	}

	public void setServerService(ServerService serverService) {
		this.serverService = serverService;
	}
	
    public StoreService getStoreService() {
        return storeService;
    }

    public void setStoreService(StoreService storeService) {
        this.storeService = storeService;
    }

    public StoreEntity getStoreEntity() {
        return storeEntity;
    }

    public void setStoreEntity(StoreEntity storeEntity) {
        this.storeEntity = storeEntity;
    }
    
    @Override
	public void instance() {
		super.instance();
		this.setDefaultSortOrder("t1.id", Constant.ASC);
	}
    
    public StoreAction() {
        this.setGoListJsp("/guime/base/store/list.jsp");
        this.setGoEditJsp("/guime/base/store/edit.jsp");
    }
    
    /**
	 * 新建事件
	 * @return
	 */
    @Override
	public String append() {
    	String use = "-1";
		if (storeEntity != null) 
			use = storeEntity.getDatasource();
		this.setServerList(serverService.getNoUseServerList(use));
		
		return super.append();
	}

	/**
	 * 浏览事件
	 * @return
	 */
    @Override
	public String view() {
    	super.view();
    	
    	String use = "-1";
		if (storeEntity != null) 
			use = storeEntity.getDatasource();
		this.setServerList(serverService.getNoUseServerList(use));
		
		return Constant.VIEW;
	}
    
    /**
	 * 保存事件
	 * @return
	 */
    @Override
	public String save() {
		Map<String, Object> map = ValidatorUtils.validate(this.getEntityClass());
		if (map != null) {
			request.setAttribute("method", Constant.MODIFY);
			ActionUtils.addValidateError(this, map);
			return Constant.CHECKFORM;
		}
		
		String id = this.storeService.saveing(storeEntity);
		if (id == null) {
			throw new ActionException("影响数据库0行，,保存失败!");
		}
		
		String gotoAction = request.getParameter("gotoAction");
		return gotoAction;
	}

}