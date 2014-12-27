/**
 * author: 谢少华
 * 
 * date: 2014-12-04 15:16
 */
package com.guime.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.guime.base.entity.ServerEntity;
import com.web.api.core.dao.BaseDao;

public interface ServerDao extends BaseDao<ServerEntity, String> {
	
	/**
	 * 获取未用服务器的信息 
	 */
	public List<ServerEntity> getNoUseServerList(@Param(value = "useDataSource") String useDataSource);
	
	/**
	 * 设置已使用的服务器
	 * @param id
	 */
	public void setUseServer(@Param(value = "datasource") String datasource);
	
	/**
	 * 取消使用的服务器
	 * @param id
	 */
	public void setNoUseServer(@Param(value = "datasource") String datasource);
	

}