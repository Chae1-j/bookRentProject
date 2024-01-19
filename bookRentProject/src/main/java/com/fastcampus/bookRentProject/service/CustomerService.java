package com.fastcampus.bookRentProject.service;

import java.util.List;

import com.fastcampus.bookRentProject.domain.CustomerDto;

public interface CustomerService { // mapper역할
	int registerPro(CustomerDto dto) throws Exception;
	List<CustomerDto> custList() throws Exception;
	CustomerDto getCust(Integer cust_no) throws Exception;
	int custModify(CustomerDto dto) throws Exception;
}
