package com.web.api.core.action.interceptor;

import java.io.Serializable;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.guime.base.entity.StoreEntity;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.web.api.core.ds.DataSourceContextHolder;
import com.web.api.core.dynamic.DynamicPool;
import com.web.api.core.exception.ActionException;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.DateUtils;

public class DynamicInterceptor extends AbstractInterceptor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	private String defaultDataSource;
	
	public String getDefaultDataSource() {
		return defaultDataSource;
	}

	public void setDefaultDataSource(String defaultDataSource) {
		this.defaultDataSource = defaultDataSource;
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		Date startDate = new Date();
		
		logger.debug("================================================================");
		logger.debug("No2. 开启 Intercept 动态代理 DataSource 拦截器!" );
		
		if (BaseUtils.isNotEmpty(defaultDataSource)) {
			DataSourceContextHolder.setDataSourceType(defaultDataSource); 
			logger.debug("No2. 切换到默认数据源!" );
		} else {
			String storeid = ServletActionContext.getRequest().getParameter("storeid");
			if (BaseUtils.isNull(storeid))
				throw new ActionException("严重错误: 商家  Store ID 为空,请与管理员联系.");
			
			StoreEntity storeEntity = DynamicPool.getInstance().getDynamicPoolEntity(storeid);
			if (storeEntity == null)
				throw new ActionException("严重错误: 无法获取商家  Store 对象,请与管理员联系.");
			
			DataSourceContextHolder.setDataSourceType(storeEntity.getDatasource()); 
			logger.debug("No2. 切换数据源到: " + DataSourceContextHolder.getDataSourceType() + "  参数:" + storeEntity.toString());

		}
		logger.debug("No2. 成功通过 Intercept 动态代理 DataSource 拦截器, 耗时:" + DateUtils.compareDateTime(startDate, new Date()));
		logger.debug("================================================================");
		
		return invocation.invoke();
	}
	
}
