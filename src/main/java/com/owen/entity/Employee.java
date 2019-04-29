package com.owen.entity;

public class Employee {
	//员工表
	
	private int empID;
	private String emp_name;
	private String hire_date;
	private double salary;
	
	public Employee() {
		super();

	}
	
	public Employee(int empID) {
		super();
		this.empID = empID;
	}
	
	public Employee(int empID, String emp_name) {
		super();
		this.empID = empID;
		this.emp_name = emp_name;
	}
	
	public Employee(int empID, String emp_name, String hire_date, double salary) {
		super();
		this.empID = empID;
		this.emp_name = emp_name;
		this.hire_date = hire_date;
		this.salary = salary;
	}
	
	@Override
	public String toString() {
		return "Employee [empID=" + empID + ", emp_name=" + emp_name + ", hire_date=" + hire_date + ", salary=" + salary
				+ "]";
	}
	
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}

}
