package com.pcwk.miss.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.service.MovieService;

@Controller("movieController")
@RequestMapping("movie")
public class MovieController {
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	MovieService movieService;
	
	public MovieController() {
		
	}
	
	// http://localhost:8081/miss/movie/main.do
	@RequestMapping(value = "/main.do", method=RequestMethod.GET)
	public String mainView(Model model) {
		System.out.println("===================");
		System.out.println("=MissController=mainView()=");
		System.out.println("===================");
		
		List<MovieVO> movieList = movieService.getAll();
		
		model.addAttribute("movieList", movieList);
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

