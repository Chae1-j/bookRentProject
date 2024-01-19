package com.fastcampus.bookRentProject.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RentDaoImpl implements RentDao {
	@Autowired(required=false)
	private SqlSession session;
	private static String namespace="com.fastcampus.bookRentProject.dao.RentMapper";
}
