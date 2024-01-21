package com.fastcampus.bookRentProject.dao;

import java.util.List;

import com.fastcampus.bookRentProject.domain.CustomerDto;
import com.fastcampus.bookRentProject.domain.RentDto;

public interface RentDao {
	List<RentDto> selectRentList() throws Exception;

	//List<RentDto> selectJoinRent() throws Exception;
	
}