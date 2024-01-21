package com.fastcampus.bookRentProject.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fastcampus.bookRentProject.domain.CustomerDto;
import com.fastcampus.bookRentProject.domain.RentDto;

@Repository
public class RentDaoImpl implements RentDao {
	@Autowired(required=false)
	private SqlSession session;
	@Autowired(required=false)
	private String namespace="com.fastcampus.bookRentProject.dao.RentMapper.";
	
	@Override
	public List<RentDto> selectRentList() throws Exception {
		return session.selectList(namespace+"selectRentList");
	}
	
//	@Override
//	public List<RentDto> selectJoinRent() throws Exception {
//		return session.selectList(namespace + "selectJoinRent");
//	}


}
