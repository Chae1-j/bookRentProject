package com.fastcampus.bookRentProject.controller;

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

@Controller
public class CustomerController {
	@Autowired(required=false)
	private CustomerDao cust;
	
	@GetMapping("register")
	public String register() {
		return "registerForm";
	}
	
	@PostMapping("registerPro")
	public String registerPro(@ModelAttribute Model m, CustomerDto dto) {
		System.out.println(dto);
		return "custList";
	}
	
	@GetMapping("custList")
	public String list() {
		return "custList";
	}
	
	@GetMapping("custModify")
	public String modify() {
		return "custModify";
	}
//	@GetMapping(value = "BuyerList")
//	public String BuyerList(@RequestParam(defaultValue = "") String keyword,HttpSession session, Model model) {
//		
//		List<BuyerVo> buyerList = service.getBuyerList(keyword);
//		
//		model.addAttribute("buyerList", buyerList);
//		
//		return "buyer/buyer_list";
//	}//BuyerList 끝

}
