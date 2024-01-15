package com.fastcampus.project;

import java.util.Date;

public class Rent {
	private int cust_no;
	private int rent_no;
	private String book_code;
	private int rent_price;
	private Date rent_date;
	
	public int getCust_no() {
		return cust_no;
	}
	public void setCust_no(int cust_no) {
		this.cust_no = cust_no;
	}
	public int getRent_no() {
		return rent_no;
	}
	public void setRent_no(int rent_no) {
		this.rent_no = rent_no;
	}
	public String getBook_code() {
		return book_code;
	}
	public void setBook_code(String book_code) {
		this.book_code = book_code;
	}
	public int getRent_price() {
		return rent_price;
	}
	public void setRent_price(int rent_price) {
		this.rent_price = rent_price;
	}
	public Date getRent_date() {
		return rent_date;
	}
	public void setRent_date(Date rent_date) {
		this.rent_date = rent_date;
	}
	
	@Override
	public String toString() {
		return "Rent [cust_no=" + cust_no + ", rent_no=" + rent_no + ", book_code=" + book_code + ", rent_price="
				+ rent_price + ", rent_date=" + rent_date + "]";
	}
	
	

}
