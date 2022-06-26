package com.pcwk.miss.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.miss.movie.service.MovieService;

@Controller("qnaController")
@RequestMapping("qna")
public class QnaController {
final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	MovieService movieService;
	
	public QnaController() {
		
	}
	
	@RequestMapping(value = "/qna.do", method = RequestMethod.GET)
	public String qnaView(Model model) {
		LOG.debug("=====================");
		LOG.debug("=QnaController=qnaView=");
		LOG.debug("=====================");
		return "qna/qna";
	}
}
