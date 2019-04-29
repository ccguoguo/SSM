package com.owen.mapper;

import java.util.List;

import com.owen.entity.Product;


public interface ProductMapper {
	//1.查询所有产品
	public List<Product> selectAllProduct();
	
	//2.分页查询
	public List<Product> selectProductByPage();

	//3.按条件查询
	public List<Product> selectProductByCondition(Product p);
	
	//4.获得总记录数
	public int getTotalRecord();
	
	//5.增
	public int insertProduct(Product p);
	
	//6.改
	public int updateProduct(Product p);
	
	//7.删
	public int deleteProduct(int id);
	
}
