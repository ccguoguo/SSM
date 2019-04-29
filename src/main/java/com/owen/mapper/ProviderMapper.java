package com.owen.mapper;

import java.util.List;

import com.owen.entity.Provider;

public interface ProviderMapper {
	
	//1.增
	public int insertProvider(Provider provider);
	
	//2.删
	public int deleteProvider(int id);
	
	//3.分页查询所有供应商
	public List<Provider> selectProviderByPage();
	
	//4.改
	public int updateProvider(Provider provider);
	
	//5.获得记录条数
	public int getTotalRecord();
	
	//6.重名判断
	public String duplicateName(Provider provider);
	
	//7.根据ID查询供应商信息
	public Provider selectProviderByID(int id);
	
	//8.查询所有供应商
	public List<Provider> selectAllProvider();

}
