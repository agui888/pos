package com.web.api.core.dynamic;

import java.util.List;

import com.guime.base.entity.StoreEntity;
import com.guime.base.service.StoreService;
import com.web.api.core.utils.SpringContextUtils;

public class DynamicPool {
	
	private boolean isProcess = false; 
	
	private static DynamicPool instance = null;
	
	private List<StoreEntity> list;
	
	public static DynamicPool getInstance() { // synchronized
		if (instance == null) {
			instance = new DynamicPool();
			StoreService storeService = (StoreService)SpringContextUtils.getBean("StoreService");
			instance.setList(storeService.getDynamicList());
		}
		return instance;
	}
	
	public synchronized void setList(List<StoreEntity> list) {
		while (! isProcess) {
			this.list = list;
			isProcess = true;
		}
	}
	
	public StoreEntity getDynamicPoolEntity(String storeid) {
		StoreEntity rs = null;
		
		isProcess = true;
		try {
			for (StoreEntity se: this.list) 
				if (se.getId().equals(storeid)) {
					rs = se;
					break;
				}
		} finally {
			isProcess = false;
		}
		return rs;
	}
}
