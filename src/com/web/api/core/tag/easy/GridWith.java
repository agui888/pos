package com.web.api.core.tag.easy;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.web.api.core.utils.BaseUtils;

/**
 * 基于 GridEntity 实体实现
 * @author Tobin
 *
 */
public class GridWith extends SimpleTagSupport {

	private List<Map<String, Object>> list;
	
	private String gridtag;
	
	private String key;
	
	private String initial;
	
	public String getGridtag() {
		return gridtag;
	}

	public void setGridtag(String gridtag) {
		this.gridtag = gridtag;
	}
	
	public List<Map<String, Object>> getList() {
		return list;
	}

	public String getKey() {
		return key;
	}

	public String getInitial() {
		return initial;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public void setInitial(String initial) {
		this.initial = initial;
	}

	public void doTag() throws JspTagException,IOException {
		String str = "";
		if (BaseUtils.isNotNull(list)) { 
			try {
				for (Map<String, Object> map: list) {
					String columnname = (String)map.get("COLUMNNAME");
					String grid = (String)map.get("GRIDTAG"); 
					if (BaseUtils.isNotEmpty(columnname) && BaseUtils.isNotEmpty(grid))
						if (columnname.equals(key) && grid.equals(gridtag)) {
							str = map.get("WIDTH").toString();
							break;
						}
				}
		    } catch (Exception e) {
		    	throw new JspTagException("GridWidth ERROR! " + e.toString());
		    }
		}
		if (BaseUtils.isEmpty(str))
			str = this.initial;
		getJspContext().getOut().write(str);
	}

}
