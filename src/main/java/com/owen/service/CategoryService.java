package com.owen.service;


import java.util.List;

import com.github.pagehelper.PageInfo;
import com.owen.entity.Category;

public interface CategoryService {

	//1.分页查询所有类别
	public PageInfo<Category> selectCategoryByPage(int currentPage,int pageSize);

	//2.插入类别数据
	public int insertCategory(Category category);

	//3.修改类别数据
	public int updateCategory(Category category);

	//4.删除类别数据
	public int deleteCategory(int id);
	
	//5.根据ID查询目录信息
	public Category selectCategoryByID(int id);

	//6.查询所有目录信息
	public List<Category> selectAllCategory();
	
	//7.重名判断
	public String duplicateName(Category category);
	
	public void add();
}
