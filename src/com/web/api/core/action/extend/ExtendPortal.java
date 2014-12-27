package com.web.api.core.action.extend;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.api.core.action.utils.ActionUtils;
import com.web.api.core.entity.PageEntity;
import com.web.api.core.entity.TEntity;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.entity.UserEntity;

/**
 * 门户 Action 辅助类
 * @author Tobin
 *
 */
public class ExtendPortal {
	
	private HttpServletRequest request;
	
	private HttpSession session;
	
	private HttpServletResponse response;
	
	private String menuid;
	
	private String powerRuleSQL;
	
	public ExtendPortal(HttpServletRequest request, HttpServletResponse response, String menuid) {
		this.request = request;
		this.session = request.getSession();
		this.response = response;
		this.menuid = menuid;
	}

	/**
	 * 查询Key唯一名称
	 * @return
	 */
	@Deprecated
	public String searchSerial() {
		return Constant.SEARCH + "-" + menuid;
	}
	
	/**
	 * 分页Key唯一名称
	 * @return
	 */
	@Deprecated
	public String pageSerial() {
		return Constant.PAGE + "-" + menuid;
	}
	
	/**
	 * 排序Key唯一名称
	 * @return
	 */
	@Deprecated
	public String orderSerial() {
		return Constant.ORDER + "-" + menuid;
	}
	
	/**
	 * 清空  "查询" 与  "分页" 的  Session 对象
	 */
	public void removeSessionParameter() {
		session.removeAttribute(searchSerial());
		session.removeAttribute(pageSerial());
		session.removeAttribute(orderSerial());
	}
	
	/**
	 * 设置  "查询" 到  Session 对象
	 */
	public void setSessionSearch(Map<String, Object> entityMap) {
		session.removeAttribute(searchSerial());
		session.setAttribute(searchSerial(), entityMap);
	}
	
	/**
	 * 获取  "查询" 的  Session 对象
	 */
	@SuppressWarnings("unchecked")
	public Map<String, Object> getSessionSearch() {
		Map<String, Object> entityMap = null;
		if (session.getAttribute(searchSerial()) != null)
			entityMap = (Map<String, Object>)session.getAttribute(searchSerial());
		return entityMap;
	}
	
	/**
	 * 设置  "分页" 到  Session 对象
	 */
	public void setSessionPage(PageEntity pageEntity) {
		session.removeAttribute(pageSerial());
		session.setAttribute(pageSerial(), pageEntity);
	}
	
	/**
	 * 获取  "分页" 的  Session 对象
	 */
	public PageEntity getSessionPage(int pageSize) {
		PageEntity pageEntity = null;
		if (session.getAttribute(pageSerial()) != null)
			pageEntity = (PageEntity)session.getAttribute(pageSerial());
		
		if (pageEntity == null)
			pageEntity = new PageEntity();
		
		pageEntity.setPageSize(pageSize);
		return pageEntity;
	}
	
	/**
	 * 设置  "排序" 到  Session 对象
	 */
	public void setSessionOrder(String sort, String order) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("_sort", sort);
		map.put("_order", order);
		
		session.removeAttribute(orderSerial());
		session.setAttribute(orderSerial(), map);
	}
	
	/**
	 * 获取  "排序" 的  Session 对象
	 */
	@SuppressWarnings("unchecked")
	public Map<String, Object> getSessionOrder() {
		Map<String, Object> map = null;
		if (session.getAttribute(orderSerial()) != null)
			map = (Map<String, Object>)session.getAttribute(orderSerial());
		
		return map;
	}
	
	/**
	 * 二次封装的查询
	 * @param entity
	 * @return
	 */
	public Map<String, Object> builderSearchHashMap(TEntity<?> entity) {
		// 获取"查询Entity2Map,排序"Session对象
		Map<String, Object> searchMap = getSessionSearch();
		
		if (searchMap == null)
			searchMap = ActionUtils.converterMapEntity(entity);

		Map<String, Object> sqlParam = builderRuleSQL(searchMap);
		return sqlParam;
	}
	
	/**
	 * 二次封装的查询、排序
	 * @param entity
	 * @param sort
	 * @param order
	 * @return
	 */
	public Map<String, Object> builderSearchAndOrderHashMap(TEntity<?> entity, String sort, String order) {
		// 设置排序 Session 对象
		Map<String, Object> m = getSessionOrder();
		if (m == null) {
			setSessionOrder(sort, order);
		} else {
			String rsort  = request.getParameter("sort");
			String rorder = request.getParameter("order");
			if (rsort != null && rorder != null) {
				String ssort   = (String)m.get("_sort");
				String soorder = (String)m.get("_order");
				if (! ssort.equals(rsort) || ! soorder.equals(rorder))
					setSessionOrder(rsort, rorder);				
			}
		}
			
		// 获取"查询Entity2Map,排序"Session对象
		Map<String, Object> searchMap = getSessionSearch();
		Map<String, Object> orderMap = getSessionOrder();
		
		if (searchMap == null)
			searchMap = ActionUtils.converterMapEntity(entity);

		Map<String, Object> param = ActionUtils.unionMap(searchMap, orderMap);
		Map<String, Object> sqlParam = builderRuleSQL(param);
		return sqlParam;
	}
	
	/**
	 * 二次封装规则SQL
	 * @param map
	 * @param menuid
	 * @return
	 */
	private Map<String, Object> builderRuleSQL(Map<String, Object> map) {
		// 设置排序 Session 对象
		String menuid  = request.getParameter("menuid");
		
		if (menuid == null)
			return map;
		
		String temp = powerRuleSQL;
		if (temp != null) {
			UserEntity user = (UserEntity) session.getAttribute(Constant.LOGINSESSION);
			temp = BaseUtils.replaceStr(temp, "@userid", user.getId());
			temp = BaseUtils.replaceStr(temp, "@deptid", user.getDeptid());
			map.put("_rulesql", temp);
		}
		
		return map;
	}
	
	/**
	 * 由 PowerInterceptor 拦截器设计值
	 * @param ruleSQL
	 */
	public void setPowerRuleSQL(String ruleSQL) {
		this.powerRuleSQL = ruleSQL;
	}
	
}
