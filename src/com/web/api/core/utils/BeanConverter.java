package com.web.api.core.utils;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import net.sf.json.JSONObject;

public class BeanConverter {

	/**
	 * 将javaBean转换成Map
	 * @param javaBean
	 * @return Map对象
	 */
	public static Map<String, Object> beanToMap(Object javaBean) {
		if (javaBean == null)
			return null;
		
		Map<String, Object> result = new HashMap<String, Object>();
		Method[] methods = javaBean.getClass().getMethods();

		for (Method method : methods) {
			try {
				if (method.getName().startsWith("get")) {
					String field = method.getName();
					field = field.substring(field.indexOf("get") + 3);
					field = field.toLowerCase().charAt(0) + field.substring(1);

					Object value = method.invoke(javaBean, (Object[]) null);
					result.put(field, value);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	/**
	 * 将json对象转换成Map
	 * @param jsonObject
	 * @return Map对象
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, Object> jsonToMap(JSONObject jsonObject) {
		if (jsonObject == null)
			return null;
		
		Map<String, Object> result = new HashMap<String, Object>();
		Iterator<String> iterator = jsonObject.keys();
		String key = null;
		String value = null;
		while (iterator.hasNext()) {
			key = iterator.next();
			value = jsonObject.getString(key);
			result.put(key, value);
		}
		return result;
	}

	/**
	 * 将map转换成Javabean
	 * @param javabean
	 * @param data map数据
	 */
	public static Object mapToBean(Object javabean, Map<String, Object> data) {
		if (javabean == null)
			return null;
		
		if (data == null) 
			return null;
		
		Method[] methods = javabean.getClass().getMethods();
		for (Method method : methods) {
			try {
				if (method.getName().startsWith("set")) {
					String field = method.getName();
					field = field.substring(field.indexOf("set") + 3);
					field = field.toLowerCase().charAt(0) + field.substring(1);
					method.invoke(javabean, new Object[] { data.get(field) });
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return javabean;
	}

}
