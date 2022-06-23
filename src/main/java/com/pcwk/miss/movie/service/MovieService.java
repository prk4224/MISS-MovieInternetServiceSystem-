package com.pcwk.miss.movie.service;

import java.util.List;

import com.pcwk.miss.domain.MovieVO;

public interface MovieService {
	
	/**
	 * 전체 영화 조회
	 * @return List<MovieVO>
	 */
	public List<MovieVO> getAll();
}
