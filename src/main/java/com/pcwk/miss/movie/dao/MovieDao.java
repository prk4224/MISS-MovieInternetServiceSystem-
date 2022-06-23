package com.pcwk.miss.movie.dao;

import java.util.List;

import com.pcwk.miss.domain.MovieVO;


public interface MovieDao {
	
	/**
	 * 전체 영화 조회
	 * @return List<MovieVO>
	 */
	List<MovieVO> getAll();
	
	
}
