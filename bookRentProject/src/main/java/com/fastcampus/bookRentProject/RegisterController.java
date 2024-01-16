package com.fastcampus.bookRentProject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class RegisterController {
//	@Autowired
//	Member member;
	
	@GetMapping("register")
	public String register() {
		return "registerForm";
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
