package com.web.api.core.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.dao.BaseDao;

/**
 * Base DAO implementation for Spring + MyBatis
 * 
 * @author Tobin
 * 
 * @param <E>
 *            entity type
 * @param <I>
 *            identifier type
 *            
 * extends SqlSessionDaoSupport
 * 
 */
public class BaseDaoImpl<E, I extends Serializable> implements BaseDao<E, I> {
	
	final String INSERT = "insert";

	final String UPDATE = "update";
	
	final String DELETE = "delete";
	
	final String DELETEBYID = "deleteById";
	
	final String EXISTS = "exists";
	
	final String SELECTBYID = "selectById";
	
	final String SELECTALL = "selectAll";
	
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	private Class<?> entityClass;
	
	@Autowired(required = true)
	protected SqlSession sqlSessionTemplate;

	/**
	 * constructor
	 */
	public BaseDaoImpl() {
		entityClass = ((Class<?>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]);
		logger.debug(entityClass.getName() + " 参数 / " + this.getClass() + " Mapper(Dao)!");
	}

	@Override
	public int insert(E entity) {
		int r = sqlSessionTemplate.insert(INSERT, entity);
		logger.debug("insert 插入成功!");
		return r;
	}

	@Override
	public int update(E entity) {
		int r = sqlSessionTemplate.update(UPDATE, entity);
		logger.debug("update 更新成功!");
		return r;
	}

	@Override
	public int delete(E entity) {
		int r = sqlSessionTemplate.delete(DELETE, entity);
		logger.debug("delete 删除成功!");
		return r;
	}

	@Override
	public int deleteById(I id) {
		int r = sqlSessionTemplate.delete(DELETEBYID, id);
		logger.debug("deleteById 删除 " + id +" 成功!");
		return r;
	}

	@Override
	public int exists(I id) {
		Map<String, Object> map = sqlSessionTemplate.selectOne(EXISTS, id);
		logger.debug("exists 查询执行成功!");
		return (Integer)map.get("count");
	}

	@Override
	public E selectById(I id) {
		E e = sqlSessionTemplate.selectOne(SELECTBYID, id);
		logger.debug("selectById 查询执行成功!");
		return e;
	}

	@Override
	public List<E> selectAll() {
		List<E> ls = sqlSessionTemplate.selectList(SELECTALL, null, new RowBounds(0, 5));
		logger.debug("selectAll 查询执行成功!");
		return ls;
	}

	@Override
	public int removeById(I id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
