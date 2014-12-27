package com.web.api.core.entity;

import java.io.Serializable;

public class PageEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private int page = 1;           //  当前页
	
	private int pageSize = 20;      //  每页记录数
	
	private int totalPage;          //  总页数
	
	private int pageCount;          //  总记录数
	
	public int[] getPage(int count, int pageSize) {
		this.pageCount = count;
		this.pageSize = pageSize;
		
		// 求总页
		int total = count / pageSize;
	    if ((count % pageSize) > 0)
	    	total ++;
   	    this.totalPage = total;
	    
		// 求开始记到结束行
		int x = page;
		int y = pageSize;
		if (x > 1)
			x = ((x - 1) * y) + 1;
	
		y = x + y - 1;
		
		int[] rs = {x, y};
		return rs;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

}
