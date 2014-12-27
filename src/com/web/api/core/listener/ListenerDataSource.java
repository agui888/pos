package com.web.api.core.listener;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.web.api.core.ds.DataSourceContextHolder;
import com.web.api.core.dynamic.DynamicPool;
import com.web.api.core.global.Cache;
import com.web.api.core.utils.DateUtils;
import com.web.api.core.utils.SpringContextUtils;

public class ListenerDataSource implements ServletContextListener {
	
	private JdbcTemplate jdbcTemplate;  
	
	String defaultName = "";
	
	private String sql1 = "SELECT STATUS, USERNAME, COUNT(*) AS NUM FROM ("+ 
			                "SELECT SID,SERIAL# SERIAL,USERNAME,PROGRAM,MACHINE,STATUS FROM V$SESSION"+ 
			                ") TEMP GROUP BY STATUS, USERNAME";
	
	private String sql2 = "SELECT 1 FROM DUAL";
	 
	public void contextInitialized(ServletContextEvent event) {
		DynamicPool pool = DynamicPool.getInstance();
		System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO - 准备加载数据源连接池.");		
		if (pool != null)
			System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO - 成功加载 Store数据.");
			
		for (Map<String, String> map: Cache.dynamicDataSource) {
			String name = (String)map.get("name");
			String isDefault = (String)map.get("default");
			
			if ("true".equals(isDefault))
				defaultName = name;
			else
				loadDefault(name, sql2, false);
		}
		
		loadDefault(defaultName, sql1, true);
	}
	
	private void loadDefault(String name, String sql, boolean isDefault) {
		System.out.print(DateUtils.dateTimeToStr(new Date()) + " - INFO - 正在加载[" + name + "]数据源");
		List<Map<String, Object>> list = null;
				
		Wait wait = new Wait();
		wait.start();
		try {
			DataSourceContextHolder.setDataSourceType(name);
			DataSource dataSource = (DataSource)SpringContextUtils.getBean(name);
			jdbcTemplate =  new JdbcTemplate(dataSource);
			list = jdbcTemplate.queryForList(sql);
		} finally {
			wait.terminate();				
		}
		
		if (isDefault) {
			System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO -   " + name + " 数据源信息:");			
			for (Map<String, Object> rs: list) {
				System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO -   状态:" + rs.get("STATUS") + " / 用户:" + rs.get("USERNAME") + " / 连接数:" + rs.get("NUM"));
			}
		}
	}

	public void contextDestroyed(ServletContextEvent event) {
	}

}