package com.web.api.core.action.extend;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import com.web.api.core.entity.TEntity;
import com.web.api.core.entity.template.annotation.Excel;
import com.web.api.core.entity.template.annotation.ExcelProperty;
import com.web.api.core.exception.ActionException;
import com.web.api.core.global.Cache;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.DateUtils;
import com.web.api.core.utils.GenericsUtils;

public class ExtendExcel {

	/**
	 * 根据Entity, 将注释赋给ExcelProperty对象
	 * @param entity
	 * @return
	 */
	private List<ExcelProperty> setExcelProperty(TEntity<?> entity) {
		Class<?> clazz = entity.getClass();		
		// 2. Column 注解处理
		List<ExcelProperty> excelPropertyList = new ArrayList<ExcelProperty>();
		List<String> fieldzz = new ArrayList<String>();
	    while (GenericsUtils.isSubClass(clazz, Object.class)) {
	    	Field[] fields = clazz.getDeclaredFields();	    	
	    	for (Field field : fields) {
	    		if (BaseUtils.listExists(fieldzz, field.getName()))
	    			continue;
	    		fieldzz.add(field.getName());
    			
	    		String fieldName = field.getName();
    			Object value = GenericsUtils.getClassMethod(entity, fieldName);
    			String type = field.getType().getName();
    			
    			if (BaseUtils.isNotNull(value))
    				type = value.getClass().getName();
    			
	    		if (field.isAnnotationPresent(Excel.class)) {
	    			Excel excel = field.getAnnotation(Excel.class);
	    			
	    			ExcelProperty excelProperty = new ExcelProperty(fieldName, value, type);
		    		excelProperty.setTitle(excel.Title());
		    		excelProperty.setImport(excel.Import());
		    		excelProperty.setExport(excel.Export());
		    		excelPropertyList.add(excelProperty);
	    		} else {
	    			ExcelProperty excelProperty = new ExcelProperty(fieldName, value, type);
	    			excelPropertyList.add(excelProperty);
	    		}
	    	}
	    	clazz = clazz.getSuperclass();
	    }
	    return excelPropertyList;
	}

	/**
	 * 根据注释, 导出Excel文件
	 * @param list
	 * @param entity
	 * @return
	 */
	public InputStream exportExcel(List<TEntity<?>> list, TEntity<?> entity) { 
    	if (list == null || list.size() <= 0)
    		return null;
    	
    	InputStream is = null;
    	
    	int c = 0;
    	ByteArrayOutputStream os = new ByteArrayOutputStream();
    	os.reset();
    	try {
    		WritableWorkbook book = Workbook.createWorkbook(os);
    		WritableSheet sheet = book.createSheet("Sheet", 0);
    		
    		// Title
    		List<ExcelProperty> title = setExcelProperty(entity);
    		for (ExcelProperty excel: title)
    			if (excel.getExport()) {
    				sheet.addCell(new Label(c, 0, excel.getTitle()));
    				c ++;
    			}
    		
    		// Data
    		for (int i = 0; i < list.size(); i++) {
    			c = 0;
    			TEntity<?> e = list.get(i);
    	    	List<ExcelProperty> data = setExcelProperty(e);
    		
	    		for (ExcelProperty column: data)
					if (column.getExport()) {
						String value = "";
						if (BaseUtils.isNotNull(column.getValue())) {
							if (column.getValue().getClass().equals(Date.class))
								value = DateUtils.dateTimeToStr((Date)column.getValue());
							else 
							    value = column.getValue().toString();
						}
						sheet.addCell(new Label(c, i + 1, value));
	        			c ++ ;
					}
    		}
    		
    		book.write();
			book.close();
			
			is = new ByteArrayInputStream(os.toByteArray());
			os.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    		throw new ActionException(e);
    	}
    	
		return is;
	}
	
	/**
     * 缓存Excel文件
     */
    public void importExcelCache(File inputFile, String sid) {
		try {
			InputStream upload = new FileInputStream(inputFile);
			
			// 设置目标文件
			File toFile = new File(Cache.sysPath + "/upload", sid + ".xls");
			
			// 创建一个输出流
			OutputStream server = new FileOutputStream(toFile);
			
			// 设置缓存
			byte[] buffer = new byte[1024];
			int length = 0;
			
			// 读取myFile文件输出到toFile文件中
			while ((length = upload.read(buffer)) > 0) 
				server.write(buffer, 0, length);
			
			upload.close();
			server.close();
			inputFile.delete();
		} catch (Exception e) {
			e.printStackTrace();
			throw new ActionException(e);
		}
	}
    
	/**
	 * 获取上传的Excel文件每一条列头
	 * @param sid
	 * @return
	 * @throws DataException
	 */
	public List<Map<String, String>> importExcelCells(String sessionId){
    	List<Map<String, String>> list = new ArrayList<Map<String, String>>();
    	
		File excel = new File(Cache.sysPath + "/upload", sessionId + ".xls");
    	if (BaseUtils.isNotNull(excel) && excel.exists()) {
			Workbook wb = null;
			try {
				wb = Workbook.getWorkbook(excel);
				if (wb != null) {
					Sheet[] sheets = wb.getSheets();
					if (sheets != null && sheets.length != 0) {
						Cell[] cells = sheets[0].getRow(0);
						for (int i = 0; i < cells.length; i++) {
							if(!BaseUtils.isNotEmpty(cells[i].getContents()))
								continue;
							
							Map<String, String> map = new HashMap<String, String>();
							map.put("row", String.valueOf(i));
							map.put("content", cells[i].getContents());
							list.add(map);
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new ActionException(e);
			} finally {
				wb.close();
			}
    	}
		return list;
	}
	
	/**
	 * 获取 Entity 列
	 * @param handle
	 * @return
	 */
    public List<Map<String, String>> importColumnCells(TEntity<?> entity) {
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		
		List<ExcelProperty> ls = setExcelProperty(entity);
		for (ExcelProperty column: ls) 
			if (column.getImport()) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("column", column.getName());
				map.put("display", column.getTitle());
				list.add(map);
			}
				
		return list;
	}
	
}
