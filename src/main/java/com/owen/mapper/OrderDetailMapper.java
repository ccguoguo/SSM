package com.owen.mapper;

import java.util.List;

import com.owen.entity.OrderDetail;

public interface OrderDetailMapper {
	
	//1.增加订单详情
	public int insertOrderDetail(List<OrderDetail> list);
	
	//2.按id批量删订单详情
	public int deleteOrderDetail(List<Integer> list);

	//3.哟YO批量修改 
	public void updateOrderDetail(List<OrderDetail> list);
}
