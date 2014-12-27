/**
 * author: 谢少华
 * 
 * date: 2014-06-24 12:18
 */
package com.web.business.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.web.business.system.entity.GridEntity;

public interface GridDao {
	
	public List<Map<String, Object>> getGridWidth(
			@Param(value = "formtag") String formtag,
			@Param(value = "userid") String userid);

	public String exists(@Param(value = "formtag") String formtag,
			@Param(value = "userid") String userid,
			@Param(value = "columnname") String columnname);

	public void insert(@Param(value = "formtag") String formtag,
			@Param(value = "gridtag") String gridtag,
			@Param(value = "userid") String userid,
			@Param(value = "columnname") String columnname,
			@Param(value = "width") String width);

	public void update(@Param(value = "id") String id,
			@Param(value = "width") String width);

	public List<GridEntity> selectAll(Map<?, ?> map, RowBounds rowBounds);
	
	public int count(Map<?, ?> map);
	
	public void truncate();

}
