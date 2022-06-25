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
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.WatchMovieVO;
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
		
		List<NowPlayingVO> npList = movieService.getAllNowPlaying();
		List<PlayingSoonVO> psList = movieService.getAllPlayingSoon();
		
		model.addAttribute("npList", npList);
		model.addAttribute("psList", psList);
		return "movie/main";
	}
	
	// http://localhost:8081/miss/movie/movie_detail.do
	@RequestMapping(value = "/movie_detail.do")
	public String movieDetailView() {
		System.out.println("===================");
		System.out.println("=MissController=movieDetailView()=");
		System.out.println("===================");
		return "movie/movie_detail";
	}
	
	// http://localhost:8081/miss/movie/screen.do
	@RequestMapping(value = "/screen.do", method=RequestMethod.GET)
	public String screenView(Model model, WatchMovieVO inVO) {
		System.out.println("==================");
		System.out.println("=MissController=screenView()=");
		System.out.println("==================");
		
		
		// inVO 예시로 mvNum=7 / miQuality=720넣어서 전달
		// 원래는 예매내역에서  상영페이지로 넘어올때 WatchMovieVO에서 mvNum과 miQuality를 받아서 구현하면될듯?
		inVO.setMvNum(7);
		inVO.setMiQuality(720);
		WatchMovieVO outVO = movieService.getWatchMovie(inVO);
		
		model.addAttribute("movie", outVO);
		return "movie/screen";
	}
	
	
}

