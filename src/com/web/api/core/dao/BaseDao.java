package com.web.api.core.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.web.api.core.entity.TEntity;

/**
 * Generic DAO interface
 * 
 * @author Tobin
 * 
 * @param <E>
 *            entity type
 * @param <I>
 *            identifier type
 */
public interface BaseDao<E extends TEntity<?>, I extends Serializable> {

	/**
	 * Find all entities of type <code>E</code>
	 * 
	 * @return a <code>List</code> containing the results
	 */
	List<E> selectAll(Map<?, ?> map);
	
	/**
	 * Find all entities of type <code>E</code>
	 * 
	 * @return a <code>List</code> containing the results
	 */
	List<E> selectAll(Map<?, ?> map, RowBounds rowBounds);

	/**
	 * Validate an entity
	 * 
	 * @return
	 */
	public int validate(@Param(value = "name") String name,
			@Param(value = "value") String value,
			@Param(value = "idValue") String idValue);

	/**
	 * Insert an entity
	 */
	int insert(E entity);

	/**
	 * Update an entity
	 */
	int update(E entity);

	/**
	 * Returns whether an entity with the given id exists.
	 */
	int exists(E entity);

	/**
	 * Deletes the entity with the given id.
	 */
	int deleteById(I id);

	/**
	 * Remove the entity with the given id.
	 * 需要删除的方法
	 */
	int removeById(I id);

	/**
	 * Find an entity by its identifier, or <code>null</code> if not found
	 */
	E selectById(I id);

	/**
	 * Returns count.
	 */
	int count(Map<?, ?> map);

}
