package com.fastcampus.bookRentProject.dao;

import java.util.List;

import com.fastcampus.bookRentProject.domain.CustomerRentDto;
import com.fastcampus.bookRentProject.domain.RentDto;

public interface RentDao {
	List<RentDto> selectRentList() throws Exception;

	List<CustomerRentDto> selectJoinRent() throws Exception;
	
}