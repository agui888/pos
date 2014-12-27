package com.web.api.core.entity.template.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author Tobin
 *
 */
@Retention(RetentionPolicy.RUNTIME)    
@Target({ElementType.FIELD})
public @interface Excel {

	
	// 导出
	boolean Import() default false;
		
	// 导出
	boolean Export() default false;
	
	// 字段(方法)中文描述
	String Title() default "";
	
	
}
