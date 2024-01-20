package com.fastcampus.bookRentProject.dao;

import java.util.List;
import java.util.Map;

import com.fastcampus.bookRentProject.domain.RentDto;

public interface RentDao {
	List<RentDto> selectRentList() throws Exception;

	//List<RentDto> selectJoinRent() throws Exception;
}