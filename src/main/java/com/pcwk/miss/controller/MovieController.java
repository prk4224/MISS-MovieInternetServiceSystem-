package com.pcwk.miss.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.miss.cmn.MessageVO;
import com.pcwk.miss.cmn.SearchVO;
import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.domain.MovieDetailVO;
import com.pcwk.miss.movie.domain.MovieListVO;
import com.pcwk.miss.movie.domain.MovieReviewVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.StillCutVO;
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
	
	// http://localhost:8081/miss/movie/movie_detail.do?mvNum=1
	@RequestMapping(value = "/movie_detail.do", method=RequestMethod.GET)
	public String movieDetailView(HttpServletRequest request, Model model) {
		System.out.println("===================");
		System.out.println("=MissController=movieDetailView()=");
		System.out.println("=param=" + request.getParameter("mvNum"));
		System.out.println("===================");
		
		int mvNum = Integer.parseInt(request.getParameter("mvNum"));
		MovieDetailVO outVO = movieService.getMovieDetail(mvNum);
		List<StillCutVO> scList = movieService.getStillCut(mvNum);
		List<MovieReviewVO> rvList = movieService.getAllReview(mvNum);
		
		model.addAttribute("detailVO", outVO);
		model.addAttribute("scList", scList);
		model.addAttribute("rvList", rvList);
		return "movie/movie_detail";
	}
	
	@RequestMapping(value = "/reviewAdd.do", method = RequestMethod.POST
			,produces = "application/json;charset=UTF-8")
	@ResponseBody //스프링에서 비동기 처리를 하는 경우, HTTP 요청의 본문 body부분이 전달된다.
	public String reviewAdd(MovieReviewVO inVO) throws SQLException{
		String jsonString = "";
		LOG.debug("====================");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("====================");
		
		int flag = movieService.reviewAdd(inVO);
		String resultMessage = "";
		
		if(flag == 1) {
			resultMessage += "등록완료";
		}else {
			resultMessage += "등록실패";
		}
		MessageVO message = new MessageVO(String.valueOf(flag), resultMessage);
		Gson gson = new Gson();
		jsonString = gson.toJson(message);
		LOG.debug("====================");
		LOG.debug("=jsonString=" + jsonString);
		LOG.debug("====================");
		
		return jsonString;
	}
	
	@RequestMapping(value = "/reviewRetrieve.do", method = RequestMethod.GET
			, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String reviewRetrieve(SearchVO inVO) throws SQLException{
		String jsonString = "";
		LOG.debug("====================");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("====================");
		
		List<MovieReviewVO> list = movieService.reviewRetrieve(inVO);
		Gson gson = new Gson();
		jsonString = gson.toJson(list);
		
		LOG.debug("====================");
		LOG.debug("=jsonString=" + jsonString);
		LOG.debug("====================");
		
		
		return jsonString;
	}
	
	// http://localhost:8081/miss/movie/screen.do
	@RequestMapping(value = "/screen.do", method=RequestMethod.GET)
	public String screenView(Model model, WatchMovieVO inVO, HttpServletRequest request) {
		System.out.println("==================");
		System.out.println("=MissController=screenView()=");
		System.out.println("==================");
		
		
		// inVO 예시로 mvNum=7 / miQuality=720넣어서 전달
		// 원래는 예매내역에서  상영페이지로 넘어올때 WatchMovieVO에서 mvNum과 miQuality를 받아서 구현하면될듯?
		inVO.setMvNum(Integer.parseInt(request.getParameter("mvNum")));
		inVO.setMiQuality(Integer.parseInt(request.getParameter("miQuality")));
		WatchMovieVO outVO = movieService.getWatchMovie(inVO);
		
		model.addAttribute("movie", outVO);
		return "movie/screen";
//		return "movie/movie_loading";
	}
	
	@RequestMapping(value="/movieLoading.do", method = RequestMethod.GET)
	public String movieLoadingView(WatchMovieVO inVO, HttpServletRequest request) {
		inVO.setMvNum(Integer.parseInt(request.getParameter("mvNum")));
		inVO.setMiQuality(Integer.parseInt(request.getParameter("miQuality")));
		
		
		return "movie/movie_loading";
	}
	
	// http://localhost:8081/miss/movie/movieList.do
	@RequestMapping(value= "/movieList.do", method=RequestMethod.GET)
	public String movieListView(Model model) {
		System.out.println("===================");
		System.out.println("=MissController=movieListView()=");
		System.out.println("===================");
		
		//mvOn 0 -> 상영종료, 1-> 상영중, 2-> 상영예정
		List<MovieListVO> list0 = movieService.getMovieList(0);
		List<MovieListVO> list1 = movieService.getMovieList(1);
		List<MovieListVO> list2 = movieService.getMovieList(2);
		
		model.addAttribute("list0", list0);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		
		return "movie/movie_list";
	}
}

