package com.fastcampus.bookRentProject.service;

import java.util.List;

import com.fastcampus.bookRentProject.domain.CustomerDto;
import com.fastcampus.bookRentProject.domain.RentDto;

public interface RentService {

	List<RentDto> rentList() throws Exception;

	//List<RentDto> rentSum() throws Exception;
	
}