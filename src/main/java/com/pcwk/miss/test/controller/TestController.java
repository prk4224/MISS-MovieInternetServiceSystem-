package com.pcwk.miss.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	public TestController() {
		
	}
	
	@RequestMapping(value = "test/testView.do")
	public String testView() {
		System.out.println("===================");
		System.out.println("=TestController=testView()=");
		System.out.println("===================");
		return "test/test";
	}
}
