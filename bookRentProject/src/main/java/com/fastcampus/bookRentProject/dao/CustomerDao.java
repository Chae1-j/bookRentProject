package com.fastcampus.bookRentProject.dao;

import com.fastcampus.bookRentProject.domain.CustomerDto;
import java.util.*;

public interface CustomerDao {
	int insert(CustomerDto dto) throws Exception; // 고객정보 입력
	List<CustomerDto> selectAll() throws Exception; // 고객정보 목록
	CustomerDto select(Integer cust_no) throws Exception; // 개별 고객 항목
	int custUpdate(CustomerDto dto) throws Exception; // 고객정보 수정
}