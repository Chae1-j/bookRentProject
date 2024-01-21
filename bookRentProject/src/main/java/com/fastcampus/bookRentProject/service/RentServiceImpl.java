package com.fastcampus.bookRentProject.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fastcampus.bookRentProject.dao.CustomerDao;
import com.fastcampus.bookRentProject.dao.RentDao;
import com.fastcampus.bookRentProject.domain.CustomerDto;
import com.fastcampus.bookRentProject.domain.CustomerRentDto;
import com.fastcampus.bookRentProject.domain.RentDto;

@Service
public class RentServiceImpl implements RentService {
	@Autowired
	private RentDao dao;

	@Override
	public List<RentDto> rentList() throws Exception {
		return dao.selectRentList();
	}

	@Override
	public List<CustomerRentDto> rentSum() throws Exception {
		return dao.selectJoinRent();
	}
	
	
}
