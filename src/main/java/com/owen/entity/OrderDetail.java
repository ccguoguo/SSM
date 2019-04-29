package com.owen.entity;

public class OrderDetail {
	//订单详情表

	private int id;
	private Orders orders;//订单对象
	private Product product;//产品对象
	private int quantity;
	private double discount;

	public OrderDetail() {
		super();
	}

	//重名校验用
	public OrderDetail(Orders orders, Product product) {
		super();
		this.orders = orders;
		this.product = product;
	}

	//添加用
	public OrderDetail(Orders orders, Product product, int quantity, double discount) {
		super();
		this.orders = orders;
		this.product = product;
		this.quantity = quantity;
		this.discount = discount;
	}

	//修改用
	public OrderDetail(int id, Orders orders, Product product, int quantity, double discount) {
		super();
		this.id = id;
		this.orders = orders;
		this.product = product;
		this.quantity = quantity;
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "OrderDetail [id=" + id + ", orders=" + orders + ", product=" + product + ", quantity=" + quantity
				+ ", discount=" + discount + "]";
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}


}
