package com.owen.entity;

public class Orders {
	//订单表

	private String orderID;
	private String order_date;
	private Customer customer;
	private Employee employee;
	
	public Orders() {
		super();
	}
	
	public Orders(String orderID) {
		super();
		this.orderID = orderID;
	}
	
	public Orders(String order_date, Customer customer, Employee employee) {
		super();
		this.order_date = order_date;
		this.customer = customer;
		this.employee = employee;
	}
	
	public Orders(String orderID, String order_date, Customer customer, Employee employee) {
		super();
		this.orderID = orderID;
		this.order_date = order_date;
		this.customer = customer;
		this.employee = employee;
	}
	
	@Override
	public String toString() {
		return "Orders [orderID=" + orderID + ", order_date=" + order_date + ", customer=" + customer + ", employee="
				+ employee + "]";
	}
	
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

}
