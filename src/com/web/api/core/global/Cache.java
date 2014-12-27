package com.web.api.core.global;

import java.util.List;
import java.util.Map;

/**
 * 缓存变量,所有内存值来自system.xml配置文件
 * @author Tobin
 *
 */
public class Cache {

	public static String sysPath;
	
	public static List<String> strutsClassInterceptor;
	
	public static List<String> strutsMethodInterceptor;
	
	
	public static int interval;
	
	public static int semaphore;
	
	public static List<Map<String, String>> dynamicDataSource;
	
}
