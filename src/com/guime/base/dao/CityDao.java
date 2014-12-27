/**
 * author: 谢少华
 * 
 * date: 2014-12-04 09:12
 */
package com.guime.base.dao;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.guime.base.entity.CityEntity;
import com.web.api.core.dao.BaseDao;

public interface CityDao extends BaseDao<CityEntity, BigDecimal> {

	public List<Map<String, Object>> getComboBox();

	public String validatedParent(@Param(value = "modifyid") String modifyid,
			@Param(value = "comboboxid") String comboboxid);

	public int validatedDelete(@Param(value = "selectid") String selectid);
	
}