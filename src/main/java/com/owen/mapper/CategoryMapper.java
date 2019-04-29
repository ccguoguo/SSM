package com.owen.mapper;

import java.util.List;

import com.owen.entity.Category;

public interface CategoryMapper {
	
	//1.增
	public int insertCategory(Category category);
	
	//2.删
	public int deleteCategory(int id);
	
	//3.改
	public int updateCategory(Category category);
	
	//4.重名判断
	public String duplicateName(Category category);
	
	//5.获得记录条数
	public int getTotalRecord();
	
	//6.根据ID查询目录信息
	public Category selectCategoryByID(int id);
	
	//7.查询所有目录信息
	public List<Category> selectAllCategory();
	
	//8.分页查询目录信息
	public List<Category> selectCategoryByPage();
	
	//9.查询该目录下的所有产品
	public Category selectProductByCID(int id);
	
	
}
