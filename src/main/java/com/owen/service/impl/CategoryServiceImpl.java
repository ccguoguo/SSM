package com.owen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.owen.entity.Category;
import com.owen.mapper.CategoryMapper;
import com.owen.service.CategoryService;

@Service("categoryService")
@Transactional(isolation=Isolation.DEFAULT , propagation=Propagation.REQUIRED , readOnly=false)
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryMapper cateMapper;
	
	@Override
	public void add() {
		
	}

	//用pagehelper分页查询
//	System.out.println("总记录数:"+pageInfo.getTotal());
//	System.out.println("当前页:"+pageInfo.getPageNum());
//	System.out.println("页大小:"+pageInfo.getPageSize());
//	System.out.println("总页数:"+pageInfo.getPages());
//	
//	List<Category> list2 = pageInfo.getList();
//	for(Category c : list2) {
//		System.out.println(c);
//	}
	@Override
	@Transactional(isolation=Isolation.DEFAULT , propagation=Propagation.REQUIRED , readOnly=true)
	public PageInfo<Category> selectCategoryByPage(int currentPage,int pageSize) {
		
		PageHelper.startPage(currentPage,pageSize);
		
		List<Category> list = cateMapper.selectCategoryByPage();
		
		PageInfo<Category> pageInfo = new PageInfo<Category>(list);
		
		return pageInfo;
	}

	@Override
	public int insertCategory(Category category) {
		cateMapper.insertCategory(category);
		int i = 1/0;
		cateMapper.insertCategory(new Category("第二条","二条"));
		return 0;
	}

	@Override
	public int updateCategory(Category category) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCategory(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Category selectCategoryByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> selectAllCategory() {
		List<Category> cates = cateMapper.selectAllCategory();
		return cates;
	}

	@Override
	public String duplicateName(Category category) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
