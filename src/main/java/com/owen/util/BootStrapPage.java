package com.owen.util;

import java.util.List;

public class BootStrapPage<T> {
	
	//用bootstrap的table组件分页需要这个帮助类
	
	private int total;//总记录数
	private List<T> rows;//存放每行数据的列表
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	
	

}
