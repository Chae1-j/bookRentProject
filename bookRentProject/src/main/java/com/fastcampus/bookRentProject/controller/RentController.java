package com.fastcampus.bookRentProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RentController {
	
	@GetMapping("rentList")
	public String register() {
		return "rentList";
	}
	
	@GetMapping("rentAmount")
	public String list() {
		return "rentAmount";
	}

}
