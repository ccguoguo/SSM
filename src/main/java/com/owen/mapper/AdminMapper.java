package com.owen.mapper;

import com.owen.entity.Admin;

public interface AdminMapper {
	
//	Mapper动态代理
//		遵循四大规则:
//		一:接口的方法名 == 对应 xml 文件的id名
//		二:返回值的类型 和 对应 xml 里resultType的类型一样.
//		三:方法形参的类型要和 xml 文件里的 parameterType 的类型一致
//		四:xml里的空间名. 要和接口的类路径一致

	//1.登录
	public Admin adminLogin(Admin admin);
	
	//2.注册
	public int adminRegister(Admin admin);
	
}
