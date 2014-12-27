package com.web.api.core.entity.template.annotation;


/**
 * @author Tobin
 */
public class ExcelProperty {

	private String name;
	
	private Object value;
	
	private String type;
	
	// 导出
	private boolean Import;

	// 导出
	private boolean Export;
	
	// 字段(方法)中文描述
	private String Title;
	
	/**
	 * 构造器
	 * 在此只加了三个属性,即'字段名'与'值'与'值类型'.
	 * @param name
	 * @param value
	 * @param type
	 */
	public ExcelProperty(String name, Object value, String type) {
		this.name = name;
		this.value = value;
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public Object getValue() {
		return value;
	}

	public String getType() {
		return type;
	}

	public boolean getImport() {
		return Import;
	}

	public boolean getExport() {
		return Export;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setValue(Object value) {
		this.value = value;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setImport(boolean import1) {
		Import = import1;
	}

	public void setExport(boolean export) {
		Export = export;
	}
	
	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}
	
}
