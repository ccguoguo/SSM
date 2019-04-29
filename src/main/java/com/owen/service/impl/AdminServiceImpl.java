package com.owen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.owen.entity.Admin;
import com.owen.mapper.AdminMapper;
import com.owen.service.AdminService;

@Service("adminService")
@Transactional(isolation=Isolation.DEFAULT , propagation=Propagation.REQUIRED , readOnly=false)
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	//登录
	@Override
	public Admin adminLogin(Admin admin) {
		Admin admin1 = adminMapper.adminLogin(admin);
		System.out.println("---Service层:"+admin1);
		return admin1;
	}

	@Override
	public int adminRegister(Admin admin) {
		// TODO Auto-generated method stub
		return 0;
	}


}
