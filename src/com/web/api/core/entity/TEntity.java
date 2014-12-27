package com.web.api.core.entity;

import java.io.Serializable;

/**
 * 基本 Entity 对象, 整个系统的Entity都需要实现这此接口
 * @author Tobin
 *
 * @param <T>
 */
public interface TEntity<T> extends Serializable {
	
	public void setId(T id);
	
	public T getId();
	
	//public void setRowno(int rowno);
	
	//public int getRowno();
	
}
