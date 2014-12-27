/**
 * author: 谢少华
 * 
 * date: 2014-06-20 16:39
 */
package com.web.business.system.dao;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.web.api.core.dao.BaseDao;
import com.web.business.system.entity.DeptEntity;

public interface DeptDao extends BaseDao<DeptEntity, BigDecimal> {

	public List<Map<String, Object>> getComboBox();

	public String validatedParent(@Param(value = "modifyid") String modifyid,
			@Param(value = "comboboxid") String comboboxid);

	public int validatedDelete(@Param(value = "selectid") String selectid);
	
}
