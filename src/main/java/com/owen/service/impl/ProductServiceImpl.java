package com.owen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.owen.entity.Product;
import com.owen.mapper.ProductMapper;
import com.owen.service.ProductService;

@Service("productService")
@Transactional(isolation=Isolation.DEFAULT , propagation=Propagation.REQUIRED , readOnly=false)
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper prodMapper;
	
	@Override
	public List<Product> selectProductByPage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertProduct(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	//修改产品
	@Override
	public int updateProduct(Product product) {
		int p = prodMapper.updateProduct(product);
		return 0;
	}

	@Override
	public int deleteProduct(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Product selectProductByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> selectProductByCondition(Product p) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> selectAllProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String duplicateName(Product p) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
