package com.owen.service;

import java.util.List;

import com.owen.entity.Product;


public interface ProductService {
	//产品业务接口
	
	//1.分页查询产品表
	public List<Product> selectProductByPage();
	
	//2.插入产品数据
	public int insertProduct(Product product);
	
	//3.修改产品数据
	public int updateProduct(Product product);
	
	//4.删除产品数据
	public int deleteProduct(int id);
	
	//5.根据ID查询产品信息
	public Product selectProductByID(int id);
	
	//6.按条件分页查询产品表
	public List<Product> selectProductByCondition(Product p);
	
	//7.查询所有产品信息
	public List<Product> selectAllProduct();
	
	//8.重名判断
	public String duplicateName(Product p);
}
