package com.owen.entity;

public class Admin {
	//管理员表
	
	private int admin_id;
	private String admin_name;
	private String admin_password;
	private String date;
	
	public Admin() {
		super();
	}

	public Admin(String admin_name, String admin_password) {
		super();
		this.admin_name = admin_name;
		this.admin_password = admin_password;
	}

	public Admin(int admin_id, String admin_name, String admin_password, String date) {
		super();
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_password = admin_password;
		this.date = date;
	}
	
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Admin [管理员ID=" + admin_id + ", 管理员账号=" + admin_name + ", 管理员密码=" + admin_password
				+ ", 创建时间=" + date + "]";
	}
	
}
