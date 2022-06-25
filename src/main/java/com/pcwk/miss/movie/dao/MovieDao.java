package com.pcwk.miss.movie.dao;

import java.util.List;

import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.WatchMovieVO;


public interface MovieDao {
	
	/**
	 * 현재 상영중인 영화 조회
	 * @return List<MovieVO>
	 */
	List<NowPlayingVO> getAllNowPlaying();
	
	/**
	 * 상영 임박한 영화 조회
	 * @return
	 */
	List<PlayingSoonVO> getAllPlayingSoon();
	
	/**
	 * 영화상영 페이지 유튜브 URL
	 * @return
	 */
	WatchMovieVO getWatchMovie(WatchMovieVO inVO);
}
