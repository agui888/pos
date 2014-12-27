package com.web.api.core.logs;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.api.core.utils.SpringContextUtils;
import com.web.business.system.entity.LogsEntity;

public class LogsThread extends Thread {
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	private List<String> list;
	
	private LogsEntity logsEntity;
	
	public LogsThread(LogsEntity logsEntity) {
		this.logsEntity = logsEntity;
		list = new ArrayList<String>();
		list.add("GridWidth");
	}
	
	public void run() {
		if (logsEntity != null)
			if (notExists(list, logsEntity.getMethod())) {
				try {
					LogsAop logsAop = (LogsAop)SpringContextUtils.getBean("LogsAop");
					logsAop.save(logsEntity);
					logger.debug("保存日志:" + logsEntity.toString());
				} catch (Exception e) {
					logger.debug("保存日志失败.");
					e.printStackTrace();
				}			
			}
	}
	
	private boolean notExists(List<?> list, String value) {
		if (value == null)
			return true;

		for (int i = 0; i < list.size(); i++) {
			String o = (String) list.get(i);
			if (value.indexOf(o) > 0)
				return false;
		}

		return true;
	}
	
}
