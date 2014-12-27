package com.web.api.core.utils;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

import net.sf.json.JsonConfig;

import com.web.api.core.utils.json.BigDecimalJsonValueProcessor;
import com.web.api.core.utils.json.DateJsonValueProcessor;
import com.web.api.core.utils.json.StringJsonValueProcessor;
import com.web.api.core.utils.json.TimestampJsonValueProcessor;

public class JsonConverter {

	public static JsonConfig getJsonConfig() {
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(Date.class, new DateJsonValueProcessor("yyyy-MM-dd HH:mm:ss"));
		config.registerJsonValueProcessor(Timestamp.class, new TimestampJsonValueProcessor("yyyy-MM-dd HH:mm:ss"));
		config.registerJsonValueProcessor(String.class, new StringJsonValueProcessor());
		config.registerJsonValueProcessor(BigDecimal.class, new BigDecimalJsonValueProcessor());

		/*
		config.setJsonPropertyFilter(new PropertyFilter() {
			public boolean apply(Object source, String name, Object value) {
				System.out.println(name + " / " + value);
				if (value == null) {
					return true;
				} else {
					return false;
				}
			}
		});
		*/
		
		return config;
	}
	
}
