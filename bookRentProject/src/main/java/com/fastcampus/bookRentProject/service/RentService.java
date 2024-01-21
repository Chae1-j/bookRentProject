package com.fastcampus.bookRentProject.service;

import java.util.List;
import java.util.Map;

import com.fastcampus.bookRentProject.domain.CustomerRentDto;
import com.fastcampus.bookRentProject.domain.RentDto;

public interface RentService {

	List<RentDto> rentList() throws Exception;

	List<CustomerRentDto> rentSum() throws Exception;
	
}