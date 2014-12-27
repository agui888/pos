package com.web.api.core.action.utils;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

public class ValidatorUtils {
	
	private static Validator validator; // 它是线程安全的 
	 
    static { 
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory(); 
        validator = factory.getValidator(); 
    } 
     
    public static <T> Map<String, Object> validate(T t) {
        Set<ConstraintViolation<T>> constraintViolations = validator.validate(t);
        if(constraintViolations.size() == 0)
        	return null;

        String validateError = ""; 
    	Map<String, Object> map = new HashMap<String, Object>();
    	
        for(ConstraintViolation<T> constraintViolation: constraintViolations) {
        	String message = constraintViolation.getMessage();
        	if (message != null) {
        		String temp = message.substring(0, 1);
        		if ("#".equals(temp)) {
        			temp = message.substring(1);
        			int i = temp.indexOf("#");
        			
        			String key = temp.substring(0, i);
        			String value = temp.substring(i + 1);
        			map.put(key, value);
        			
        			validateError += value + " ";
        		} else {
        			throw new RuntimeException("Hibernate-Validator: The message the lack of expression character('{char}'). error:" + message);
        		}
        	} else {
        		throw new RuntimeException("Hibernate-Validator: Message properties can not be empty");
        	}
        }
        
		map.put("validateError", validateError);
		return map; 
    }
    
}
