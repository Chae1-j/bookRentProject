package com.fastcampus.bookRentProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fastcampus.bookRentProject.dao.CustomerDao;
import com.fastcampus.bookRentProject.domain.CustomerDto;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired(required=false)
	private CustomerDao dao;

	@Override
	public int getNo() throws Exception {
		return dao.selectNo();
	}
	
	@Override
	public int registerPro(CustomerDto dto) throws Exception {
		System.out.println("serviceImpl DTO " + dto);
		return dao.insert(dto);
	}

	@Override
	public List<CustomerDto> custList() throws Exception {
		return dao.selectAll();
	}

	@Override
	public CustomerDto getCust(Integer cust_no) throws Exception {
		return dao.select(cust_no);
	}

	@Override
	public int custModify(CustomerDto dto) throws Exception {
		return dao.custUpdate(dto);
	}
	
	
}
