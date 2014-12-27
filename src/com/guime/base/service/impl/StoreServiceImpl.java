/**
 * author: 谢少华
 * 
 * date: 2014-12-05 16:32
 */
package com.guime.base.service.impl;

import java.util.List;

import com.guime.base.dao.ServerDao;
import com.guime.base.dao.StoreDao;
import com.guime.base.entity.StoreEntity;
import com.guime.base.service.StoreService;
import com.web.api.core.dynamic.DynamicPool;
import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.api.core.utils.BaseUtils;

public class StoreServiceImpl extends TemplateServiceImpl
        implements StoreService { 

    private StoreDao storeDao;
    
    private ServerDao serverDao;

    public StoreDao getStoreDao() {
        return storeDao;
    }

    public void setStoreDao(StoreDao storeDao) {
        this.storeDao = storeDao;
    }
    
    public ServerDao getServerDao() {
		return serverDao;
	}

	public void setServerDao(ServerDao serverDao) {
		this.serverDao = serverDao;
	}
	
	@Override
	public String saveing(StoreEntity storeEntity) {
		// 取消旧的绑定
		String oldId = storeEntity.getId();
		if (BaseUtils.isNotEmpty(oldId)) {
			StoreEntity oldStoreEntity = this.storeDao.selectById(oldId);
			String oldDataSource = oldStoreEntity.getDatasource();
			if (BaseUtils.isNotEmpty(oldDataSource))
				serverDao.setNoUseServer(oldDataSource);
		}
		
		// 设置新的绑定
		String dataSource = storeEntity.getDatasource();
		if (BaseUtils.isNotEmpty(dataSource))
			serverDao.setUseServer(dataSource);
			
		// 保存数据
		String id = this.save(storeEntity);
		
		// 更新缓存
		DynamicPool.getInstance().setList(this.getDynamicList());
		
		return id;
	}
	
	@Override
	public List<StoreEntity> getDynamicList() {
		return storeDao.selectAll(null);
	}

}