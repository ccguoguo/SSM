package com.owen.entity;

public class Product {
	//产品
	
	private int productID;
	private String product_name;
	private double income_price;
	
	private Provider provider;//供应商对象
	
	private int quantity;
	private double sales_price;
	
	private Category category;//类别对象
	
	private String income_time;
	
	
	public Product() {
		super();
	}
	
	public Product(int productID) {
		super();
		this.productID = productID;
	}
	
	public Product(String product_name) {
		super();
		this.product_name = product_name;
	}
	
	public Product(int productID,String product_name) {
		super();
		this.productID = productID;
		this.product_name = product_name;
	}
	
	public Product(String product_name,Provider provider,
			Category category) {
		super();
		this.product_name = product_name;
		this.provider = provider;
		this.category = category;
	}

	public Product(String product_name, double income_price, Provider provider, int quantity, double sales_price,
			Category category) {
		super();
		this.product_name = product_name;
		this.income_price = income_price;
		this.provider = provider;
		this.quantity = quantity;
		this.sales_price = sales_price;
		this.category = category;
	}

	public Product(int productID, String product_name, double income_price, Provider provider, int quantity,
			double sales_price, Category category) {
		super();
		this.productID = productID;
		this.product_name = product_name;
		this.income_price = income_price;
		this.provider = provider;
		this.quantity = quantity;
		this.sales_price = sales_price;
		this.category = category;
	}

	public Product(int productID, String product_name, double income_price, Provider provider, int quantity,
			double sales_price, Category category, String income_time) {
		super();
		this.productID = productID;
		this.product_name = product_name;
		this.income_price = income_price;
		this.provider = provider;
		this.quantity = quantity;
		this.sales_price = sales_price;
		this.category = category;
		this.income_time = income_time;
	}
	
	public Product(String product_name, double income_price, Provider provider, int quantity,
			double sales_price, Category category, String income_time) {
		super();
		this.product_name = product_name;
		this.income_price = income_price;
		this.provider = provider;
		this.quantity = quantity;
		this.sales_price = sales_price;
		this.category = category;
		this.income_time = income_time;
	}


	@Override
	public String toString() {
		return "产品 [产品ID=" + productID + ", 产品名称=" + product_name + ", 进货价=" + income_price
				+ ", 供应商名称="+provider.getProvider_name()+", 数量=" + quantity + ", 售价=" + sales_price 
				+ ", 类别名称=" + category.getCategory_name() + ", 进货时间=" + income_time + "]";
	}

	//---------------------------------------set , get--------------------------------------------
	
	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public double getIncome_price() {
		return income_price;
	}

	public void setIncome_price(double income_price) {
		this.income_price = income_price;
	}

	public Provider getProvider() {
		return provider;
	}

	public void setProvider(Provider provider) {
		this.provider = provider;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getSales_price() {
		return sales_price;
	}

	public void setSales_price(double sales_price) {
		this.sales_price = sales_price;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getIncome_time() {
		return income_time;
	}

	public void setIncome_time(String income_time) {
		this.income_time = income_time;
	}
	
	
	
	

}
