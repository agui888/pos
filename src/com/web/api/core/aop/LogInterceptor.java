package com.web.api.core.aop;

import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.web.api.core.global.Constant;
import com.web.api.core.logs.LogsThread;
import com.web.api.core.utils.DateUtils;
import com.web.business.system.entity.LogsEntity;
import com.web.business.system.entity.UserEntity;

public class LogInterceptor {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	public Object aroundProcess(ProceedingJoinPoint joinPoint)
			throws Throwable {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		
		UserEntity user = (UserEntity) session.getAttribute(Constant.LOGINSESSION);
		Object retVal = null;
		Object[] args = joinPoint.getArgs();
		
		logger.debug("@around：URL：" + request.getRequestURL().toString());
		logger.debug("@around：MenuID：" + request.getParameter("menuid"));
		logger.debug("@around：目标方法为：" + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
		logger.debug("@around：参数为：" +  Arrays.toString(joinPoint.getArgs()));
		logger.debug("@around：被织入的目标对象为：" + joinPoint.getTarget());
		logger.debug("@around: 用户IP地址:" + request.getRemoteAddr());
		
		if (user != null)
			logger.debug("@around：用户Session对象：" + user.getUserid() + "/" + user.getUsername());
		
		Date startDate = DateUtils.formatDateTime(new Date());
		retVal = joinPoint.proceed(args);
		Date endDate = DateUtils.formatDateTime(new Date());
		logger.debug("@around：返回对象为：" + retVal);
		
		try {
			LogsEntity logs = new LogsEntity();
			logs.setUserip(request.getRemoteAddr());
			logs.setHttpurl(request.getRequestURL().toString());
			if (user != null) {
				logs.setUserid(user.getUserid());
				logs.setUsername(user.getUsername());				
			}
			logs.setStartdatetime(startDate);
			logs.setEnddatetime(endDate);
			logs.setMenuid(request.getParameter("menuid"));
			logs.setClasses(joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
			logs.setMethod(joinPoint.getSignature().getName());
			logs.setAroundobject(joinPoint.getTarget().toString());
			logs.setObjectparam(Arrays.toString(joinPoint.getArgs()));
			
			if (user != null)
				if (args != null) {
					String methodName = joinPoint.getSignature().getName();
					String opContent = getParam(args, methodName);
					logger.debug("@around：日志记录：" + opContent);
					logs.setHttpparam(opContent);
				}
			
			if (retVal != null)
				logs.setReturnparam(retVal.toString());
			
			new LogsThread(logs).start();
		} catch (Exception e) {
			logger.error("AOP 日志记录失败.");
			e.printStackTrace();
		}
		
		return retVal;
	}

	/**
	 * 使用Java反射来获取被拦截方法(insert、update)的参数值， 将参数值拼接为操作内容
	 */
	public String getParam(Object[] args, String mName)
			throws Exception {

		if (args == null) {
			return null;
		}

		StringBuffer rs = new StringBuffer(100);
		rs.append(mName);
		String className = null;
		
		int i = 1;
		// 遍历参数对象
		for (Object info : args) {
			// 获取对象类型
			if (info == null)
				continue;
			
			className = info.getClass().getName();
			className = className.substring(className.lastIndexOf(".") + 1);
			rs.append("[参数:" + i + ", 类型:" + className + ",值:");
			
			boolean baseType = false;
			if (info instanceof String)
				baseType = true;
			if (info instanceof Boolean)
				baseType = true;
			if (info instanceof BigDecimal)
				baseType = true;
			if (info instanceof Integer)
				baseType = true;
			if (info instanceof Double)
				baseType = true;
			
			if (baseType) {
				rs.append("(" + info + ")]");
			} else {
				// 获取对象的所有方法
				Method[] methods = info.getClass().getDeclaredMethods();

				// 遍历方法，判断get方法
				for (Method method : methods) {
					String methodName = method.getName();
					
					// 不是get方法, 不处理
					if (methodName.indexOf("get") == -1)
						continue;

					Object rsValue = null;
					try {
						// 调用get方法，获取返回值
						rsValue = method.invoke(info);
						// 没有返回值
						if (rsValue == null) 
							continue;
					} catch (Exception e) {
						continue;
					}
					
					// 将值加入内容中
					rs.append("(" + methodName + " := " + rsValue.toString() + ")");
				}

				rs.append("]");
				i ++;				
			}
		}

		return rs.toString();
	}

}
