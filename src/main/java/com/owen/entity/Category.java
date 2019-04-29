package com.owen.entity;

public class Category {
	//目录表
	
	private int categoryID;
	private String category_name;
	private String category_desc;//描述
	
	public Category() {
		super();
	}

	public Category(int categoryID) {
		super();
		this.categoryID = categoryID;
	}

	public Category(String category_name, String category_desc) {
		super();
		this.category_name = category_name;
		this.category_desc = category_desc;
	}

	public Category(int categoryID, String category_name) {
		super();
		this.categoryID = categoryID;
		this.category_name = category_name;
	}

	public Category(int categoryID, String category_name, String category_desc) {
		super();
		this.categoryID = categoryID;
		this.category_name = category_name;
		this.category_desc = category_desc;
	}
	
	public Category(String category_name) {
		super();
		this.category_name = category_name;
	}

	@Override
	public String toString() {
		return "目录 [目录ID=" + categoryID + ", 目录名称=" + category_name + ", 目录描述="
				+ category_desc + "]";
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getCategory_desc() {
		return category_desc;
	}
	public void setCategory_desc(String category_desc) {
		this.category_desc = category_desc;
	}
	
	

}
