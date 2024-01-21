package com.fastcampus.bookRentProject.domain;

public class CustomerRentDto {
	private int cust_no;
	private String cust_name;
	private String grade;
	private int rent_price;
	private int total_amount;
	
	public int getCust_no() {
		return cust_no;
	}
	public void setCust_no(int cust_no) {
		this.cust_no = cust_no;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getRent_price() {
		return rent_price;
	}
	public void setRent_price(int rent_price) {
		this.rent_price = rent_price;
	}
	
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	@Override
	public String toString() {
		return "CustomerRentDto [cust_no=" + cust_no + ", cust_name=" + cust_name + ", grade=" + grade + ", rent_price="
				+ rent_price + ", total_amount" + total_amount + "]";
	}

}
