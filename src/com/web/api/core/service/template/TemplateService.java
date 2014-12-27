package com.web.api.core.service.template;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import com.web.api.core.entity.PageEntity;
import com.web.api.core.entity.TEntity;

public interface TemplateService {
	
	/**
	 * Display All List
	 */
	public JSONObject list(Map<String, Object> map);
	
	/**
	 * Display All List
	 */
	public JSONObject list(Map<String, Object> map, PageEntity pageEntity);
	
	/**
	 * Save Entity
	 */
	public String save(TEntity<?> entity);
	
	/**
	 * Save Entity
	 */
	public String save(TEntity<?> entity, List<TEntity<?>>[] detailEntity);
	
	/**
	 * Deletes the entity with the given id.
	 */
	int deleteById(String ids);
	
	/**
	 * Remove the entity with the given id.
	 */
	int removeById(String ids);
	
	/**
	 * Validate the entity
	 * @return
	 */
	boolean validated(String name, String value, String idValue);

	/**
	 * Returns whether an entity with the given id exists.
	 */
	int exists(TEntity<?> entity);

	/**
	 * Find an entity by its identifier, or <code>null</code> if not found
	 */
	TEntity<?> selectById(String id);
	
	/**
	 * Export Excel
	 */
	public List<TEntity<?>> exportExcel(Map<String, Object> map);
	
	/**
	 * Import Excel
	 */
	public List<Map<String, Object>> importExcel(TEntity<?> entity, String sessionId, 
			String columnParam[], String cellsParam[]);
	
	
	/**
	 * Detail Table 
	 * Find an entity by its identifier, or <code>null</code> if not found
	 */
	public List<TEntity<?>> selectDetail(TEntity<?> classes, String id);
	
}
