package com.web.api.core.listener;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;

import com.web.api.core.global.Cache;
import com.web.api.core.utils.DateUtils;

public class Listener implements ServletContextListener {
	
	@SuppressWarnings("unchecked")
	public void contextInitialized(ServletContextEvent event) {
		System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO - 正在启动 ERP 系统......");
		
		try {
			Cache.sysPath = event.getServletContext().getResource("/").getPath();  // WebLogic
			// Cache.sysPath = event.getServletContext().getRealPath("/");   // Tomcat
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 系统物理路径
		String file = Cache.sysPath + "/WEB-INF/classes/config/webframe/system.xml";
		Element root = xml(file).getRootElement();

		// Struts 2放过的栏截Action
		Element is1 = root.getChild("strutsClassInterceptor");
		List<Element> ms1 = is1.getChildren();
		Cache.strutsClassInterceptor = new ArrayList<String>();
		for (Element method : ms1) {
			System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO - 拦截器所释放的类: " + method.getValue());
			Cache.strutsClassInterceptor.add(method.getValue());			
		}
		
		// Struts 2放过的栏截Action
		Element is2 = root.getChild("strutsMethodInterceptor");
		List<Element> ms2 = is2.getChildren();
		Cache.strutsMethodInterceptor = new ArrayList<String>();
		for (Element method : ms2) {
			System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO - 拦截器所释放的方法: " + method.getValue());
			Cache.strutsMethodInterceptor.add(method.getValue());			
		}	
		
		// Struts 2放过的栏截Action
		Element is3 = root.getChild("spring");
		List<Element> ms3 = is3.getChildren();
		Cache.dynamicDataSource = new ArrayList<Map<String, String>>();
		for (Element method : ms3) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("name", method.getAttribute("name").getValue());
			map.put("default", method.getAttribute("default").getValue());
			System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO - 数据源: " + map.get("name") + "  " + map.get("default"));
			Cache.dynamicDataSource.add(map);			
		}
	}

	public void contextDestroyed(ServletContextEvent event) {
		System.out.println(DateUtils.dateTimeToStr(new Date()) + " - INFO - 正在关闭系统......");
	}

	private Document xml(String xmlPath){
		SAXBuilder builder = new SAXBuilder(false);
		Document doc = null;
		try {
			doc = (Document) builder.build(new File(xmlPath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doc;
	}
}