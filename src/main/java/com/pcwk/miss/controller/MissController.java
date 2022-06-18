package com.pcwk.miss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MissController {
	
	public MissController() {
		
	}
	
	@RequestMapping(value = "main/main.do")
	public String mainView() {
		System.out.println("===================");
		System.out.println("=MissController=mainView()=");
		System.out.println("===================");
		return "main/main";
	}
	
	@RequestMapping(value = "main/movie_detail.do")
	public String movieDetailView() {
		System.out.println("===================");
		System.out.println("=MissController=movieDetailView()=");
		System.out.println("===================");
		return "main/movie_detail";
	}
	
	@RequestMapping(value = "main/screen.do")
	public String screenView() {
		System.out.println("==================");
		System.out.println("=MissController=screenView()=");
		System.out.println("==================");
		return "main/screen";
	}
}
