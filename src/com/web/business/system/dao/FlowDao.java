/**
 * author: 谢少华
 * 
 * date: 2014-07-01 09:46
 */
package com.web.business.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.web.api.core.dao.BaseDao;
import com.web.business.system.entity.FlowEntity;

public interface FlowDao extends BaseDao<FlowEntity, String> {
	
	/**
	 * 职称 List 获取方法
	 */
	public List<Map<String, Object>> getComboList();

	/**
	 * 同步 SYSTEM_MENU 表
	 */
	public void synchronizationMenu();

	/**
	 * 修改时,检查是否有存在
	 */
	public int existsDetail(@Param(value = "id") String id,
			@Param(value = "menugroupid") String menugroupid);

}