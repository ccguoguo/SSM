package com.owen.entity;

public class Customer {
	//客户表

	private int customerID;
	private String customer_name;
	private String customer_add;
	private String customer_bir;
	private String customer_tel;
	
	public Customer() {
		super();
	}
	
	public Customer(int customerID) {
		super();
		this.customerID = customerID;
	}
	
	public Customer(int customerID, String customer_name) {
		super();
		this.customerID = customerID;
		this.customer_name = customer_name;
	}
	
	public Customer(int customerID, String customer_name, String customer_add, String customer_bir,
			String customer_tel) {
		super();
		this.customerID = customerID;
		this.customer_name = customer_name;
		this.customer_add = customer_add;
		this.customer_bir = customer_bir;
		this.customer_tel = customer_tel;
	}

	@Override
	public String toString() {
		return "Customer [customerID=" + customerID + ", customer_name=" + customer_name + ", customer_add="
				+ customer_add + ", customer_bir=" + customer_bir + ", customer_tel=" + customer_tel + "]";
	}
	
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_add() {
		return customer_add;
	}
	public void setCustomer_add(String customer_add) {
		this.customer_add = customer_add;
	}
	public String getCustomer_bir() {
		return customer_bir;
	}
	public void setCustomer_bir(String customer_bir) {
		this.customer_bir = customer_bir;
	}
	public String getCustomer_tel() {
		return customer_tel;
	}
	public void setCustomer_tel(String customer_tel) {
		this.customer_tel = customer_tel;
	}
	
}
