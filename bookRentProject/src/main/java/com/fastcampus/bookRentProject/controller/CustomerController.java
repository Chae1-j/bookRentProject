package com.fastcampus.bookRentProject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fastcampus.bookRentProject.dao.*;
import com.fastcampus.bookRentProject.domain.*;
import com.fastcampus.bookRentProject.service.CustomerService;

@Controller
@RequestMapping("/")
public class CustomerController {
	@Autowired(required=false)
//	private CustomerDao dao;
	private CustomerService service;
	
	@GetMapping("register")
	public String register() {
		return "registerForm";
	}
	
	@PostMapping("registerPro")
	public String registerPro(Model m,@ModelAttribute CustomerDto dto) {
		System.out.println(dto);
		try {
			int rowCnt = service.registerPro(dto);
			if(rowCnt != 1) {
				m.addAttribute("msg","고객등록 실패");
				return "redirect:/register";
			} else {
				return "custList";
			}
		} catch (Exception e) {
			//m.addAttribute("msg", "try-catch문 오류");
			e.printStackTrace();
			return "redirect:/register";
		}
		
	}
	
	@GetMapping("custList")
	public String list() {
		return "custList";
	}
	
	public String getCust() {
		return null;
	}
	
	@GetMapping("custModify")
	public String modify() {
		return "custModify";
	}


}
