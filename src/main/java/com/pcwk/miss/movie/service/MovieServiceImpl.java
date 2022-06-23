package com.pcwk.miss.movie.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.dao.MovieDao;

@Service("movieService")
public class MovieServiceImpl implements MovieService {

	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	private MovieDao movieDao;
	
	@Override
	public List<MovieVO> getAll() {
		return movieDao.getAll();
	}

}
