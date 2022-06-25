package com.pcwk.miss.movie.service;

import java.util.List;

import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.domain.MovieDetailVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.StillCutVO;
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
	
	/**
	 * 영화상세(movie_detail) 페이지 포스터, 영화정보
	 * @param mvNum
	 * @return
	 */
	public MovieDetailVO getMovieDetail(int mvNum);
	
	/**
	 * 영화상세(movie_detail) 영화 스틸컷
	 * @param mvNum
	 * @return
	 */
	public List<StillCutVO> getStillCut(int mvNum);
}
