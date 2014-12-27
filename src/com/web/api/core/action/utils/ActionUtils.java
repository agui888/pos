package com.web.api.core.action.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.ActionSupport;
import com.web.api.core.entity.TEntity;
import com.web.api.core.utils.BeanConverter;

public class ActionUtils {

	/**
	 * 返回远程访问的 IP 地址
	 * @return
	 */
	final static public String getRemoteIP(HttpServletRequest request) {
		return request.getRemoteAddr();
	}
	
	/**
	 * 返回  Action 的  package 名称
	 * 如： com.devexpress.framework7.demo.action.Demo1Action
	 * @param classes
	 * @return
	 */
	final static public String getActionPackageName(Class<?> classes) {
		return classes.getName();
	}
	
	/**
	 * 返回  Action 正在执行的方法名称
	 * 如: 将 "/DevExpress/demo/demo1_enter.action" 地址转换成 "enter"
	 * @param proxy
	 * @return
	 */
	final static public String getActionProxyMethodName(ActionProxy proxy) {
		return proxy.getMethod();
	}
	
	/**
	 * 返回系统工程名称
	 * 如: /DevExpress
	 * @param request
	 * @return
	 */
	final static public String getApplicationPath(HttpServletRequest request) {
		return request.getContextPath();
	}
	
	/**
	 * 返回系统访问IP + Port + 工程名称
	 * 如: http://localhost:8080/DevExpress
	 * @param request
	 * @return
	 */
	final static public String getApplicationURL(HttpServletRequest request) {
		// String path = request.getContextPath();
		// String url = request.getRequestURL().toString();
		// return url.substring(0, url.indexOf(path) + path.length());
		return request.getRequestURL().toString();
	}
	
	/**
	 * 返回系统URI地址
	 * 如: 将 "/DevExpress/demo/demo1_enter.action" 地址转换成 "/DevExpress/demo/demo1"
	 * @param request
	 * @return
	 */
	final static public String getApplicationURI(HttpServletRequest request) {
		String URI = ServletActionContext.getRequest().getRequestURI();
		return URI.substring(0,URI.indexOf("_"));
	}
	
	/**
	 * Entity 转 Map
	 * @param entity
	 * @param sort
	 * @param order
	 * @return
	 */
	final static public Map<String, Object> converterMapEntity(TEntity<?> entity) {
		Map<String, Object> map = null;
		map = BeanConverter.beanToMap(entity);
		return map;
	}
	
	/**
	 * Map 合并
	 * @param map1
	 * @param map2
	 * @return
	 */
	final static public Map<String, Object> unionMap(Map<String, Object> map1, Map<String, Object> map2) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (map1 != null)
			map.putAll(map1);
		if (map2 != null)
			map.putAll(map2);
		return map;
	}
	
	/**
	 * 设置验证信息
	 * @param action
	 * @param map
	 */
	final static public void addValidateError(ActionSupport action, Map<String, Object> map) {
		Set<?> set = map.entrySet();
		for(Iterator<?> iter = set.iterator(); iter.hasNext();) {
		   Map.Entry<?, ?> entry = (Map.Entry<?, ?>)iter.next();
		   String key = (String)entry.getKey();
		   String value = (String)entry.getValue();
		   if (key != null)
			   action.addFieldError(key, value);
		}
	}
	
	/**
	 * 设置验证信息
	 * @param templateAction
	 * @param map
	 */
	final static public String addValidateError(Map<String, Object> map) {
		StringBuffer error = new StringBuffer(50);
		Set<?> set = map.entrySet();
		for(Iterator<?> iter = set.iterator(); iter.hasNext();) {
		   Map.Entry<?, ?> entry = (Map.Entry<?, ?>)iter.next();
		   String key = (String)entry.getKey();
		   String value = (String)entry.getValue();
		   if ((key != null) && (key.equals("validateError")))
			   error.append(value);
		}
		return error.toString();
	}
	
}
