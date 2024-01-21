package com.fastcampus.bookRentProject.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fastcampus.bookRentProject.dao.CustomerDao;
import com.fastcampus.bookRentProject.domain.CustomerDto;
import com.fastcampus.bookRentProject.service.CustomerService;

@Controller
@RequestMapping("/")
public class CustomerController {
	@Autowired(required=false)
	private CustomerDao dao;
	@Autowired
	private CustomerService service;
	
	@GetMapping("register")
	public String register(Model m) throws Exception {
		Integer cust_no = service.getNo();
		m.addAttribute("cust_no",cust_no);
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
				return "redirect:/custList";
			}
		} catch (Exception e) {
			//m.addAttribute("msg", "try-catch문 오류");
			e.printStackTrace();
			return "redirect:/register";
		}
		
	}
	
	@GetMapping("custList")
	public String list(Model m) {
		try {
			List<CustomerDto> list = service.custList();
			m.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "cust_list";
	}
	
	@GetMapping("getCust")
	public String getCust(Model m, Integer cust_no) {
		try {
			CustomerDto cust = service.getCust(cust_no);
			m.addAttribute("cust",cust);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "custModifyForm";
	}
	
	@PostMapping("custModify")
	public String custModify(Model m,@ModelAttribute CustomerDto dto, RedirectAttributes ratr) {
		System.out.println("modify dto = " + dto);
		System.out.println(dto.getCust_no());
		try {
			int rowCnt = service.custModify(dto);
			if(rowCnt != 1) {
				ratr.addFlashAttribute("msg","failed");
				return "redirect:/getCust?cust_no=" + dto.getCust_no() ;
			} else {
				return "redirect:/custList";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/cusList";
	}
	
	


}
