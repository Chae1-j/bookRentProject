package com.fastcampus.bookRentProject.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fastcampus.bookRentProject.dao.RentDao;
import com.fastcampus.bookRentProject.domain.RentDto;
import com.fastcampus.bookRentProject.service.RentService;

@Controller
public class RentController {
	@Autowired(required=false)
	private RentService service;
	@Autowired(required=false)
	private RentDao dao;
	
	@GetMapping("rentList")
	public String list(Model m) {
		try {
			List<RentDto> list = service.rentList();
			m.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "rentList";
	}
	
//	@GetMapping("rentAmount")
//	public String rentSum(Model m) {
//		try {
//			List<RentDto> list = service.rentSum();
//			m.addAttribute("list",list);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		return "rentAmount";
//	}

}
