package com.fastcampus.bookRentProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fastcampus.bookRentProject.dao.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired(required=false)
	private CustomerDao dao;
	
}
