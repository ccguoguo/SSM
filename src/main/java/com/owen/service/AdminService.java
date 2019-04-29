package com.owen.service;

import com.owen.entity.Admin;

public interface AdminService {
	
	//管理员登录
	public Admin adminLogin(Admin admin);
	
	//管理员注册
	public int adminRegister(Admin admin);
}
