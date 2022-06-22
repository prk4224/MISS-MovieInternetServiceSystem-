package com.pcwk.miss.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("movie")
public class MovieController {
	
	public MovieController() {
		
	}
	
	@RequestMapping(value = "/main.do")
	public String mainView() {
		System.out.println("===================");
		System.out.println("=MissController=mainView()=");
		System.out.println("===================");
		return "movie/main";
	}
	
	@RequestMapping(value = "/movie_detail.do")
	public String movieDetailView() {
		System.out.println("===================");
		System.out.println("=MissController=movieDetailView()=");
		System.out.println("===================");
		return "movie/movie_detail";
	}
	
	@RequestMapping(value = "/screen.do")
	public String screenView() {
		System.out.println("==================");
		System.out.println("=MissController=screenView()=");
		System.out.println("==================");
		return "movie/screen";
	}
	
	
}

