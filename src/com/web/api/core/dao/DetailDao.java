package com.web.api.core.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.web.api.core.entity.TEntity;

/**
 * Generic Detail DAO interface
 * 
 * @author Tobin
 * 
 * @param <E>
 *            entity type
 * @param <I>
 *            identifier type
 */
public interface DetailDao<E extends TEntity<?>, I extends Serializable> {

	List<E> selectAll(I pid);
	
	int insert(E entity);

	int update(E entity);
	
	List<Map<String, Object>> selectArrayId(I pid);

	int deleteById(I id);
	
}
