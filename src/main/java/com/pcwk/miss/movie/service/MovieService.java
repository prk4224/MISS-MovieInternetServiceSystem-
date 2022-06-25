package com.pcwk.miss.movie.service;

import java.util.List;

import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.WatchMovieVO;

public interface MovieService {
	
	/**
	 * 현재 상영중인 영화 조회
	 * @return List<NowPlayingVO>
	 */
	public List<NowPlayingVO> getAllNowPlaying();
	
	/**
	 * 상영 임박한 영화 조회
	 * @return
	 */
	public List<PlayingSoonVO> getAllPlayingSoon();
	
	/**
	 * 영화상영 페이지 유튜브 URL
	 * @return
	 */
	public WatchMovieVO getWatchMovie(WatchMovieVO inVO);
}
