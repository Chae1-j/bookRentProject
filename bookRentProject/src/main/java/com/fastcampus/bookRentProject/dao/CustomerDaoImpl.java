package com.fastcampus.bookRentProject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fastcampus.bookRentProject.domain.CustomerDto;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired(required=false)
	private SqlSession session;
	private static String namespace="com.fastcampus.bookRentProject.dao.CustomerDaoImpl.";
	
	@Override
	public int insert(CustomerDto dto) throws Exception {
		System.out.println("daoImpl " + dto);
		return session.insert(namespace + "insert");
	}
	@Override
	public List<CustomerDto> selectAll() throws Exception {
		return session.selectList(namespace+"selectAll");
	}
	@Override
	public CustomerDto select(Integer cust_no) throws Exception {
		return session.selectOne(namespace+"selects");
	}
	@Override
	public int custUpdate(CustomerDto dto) throws Exception {
		return session.update(namespace+"custUpdate");
	}
	
	
}
