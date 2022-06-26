package com.pcwk.miss.movie.dao;

import java.util.List;

import com.pcwk.miss.cmn.DTO;
import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.domain.MovieDetailVO;
import com.pcwk.miss.movie.domain.MovieListVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.MovieReviewVO;
import com.pcwk.miss.movie.domain.StillCutVO;
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
	
	/**
	 * 영화상세(movie_detail) 페이지 포스터, 영화정보
	 * @param mvNum
	 * @return
	 */
	MovieDetailVO getMovieDetail(int mvNum);
	
	/**
	 * 영화상세(movie_detail) 영화 스틸컷
	 * @param mvNum
	 * @return
	 */
	List<StillCutVO> getStillCut(int mvNum);
	
	/**
	 * 리뷰 전체조회
	 * @param mvNum
	 * @return
	 */
	List<MovieReviewVO> getAllReview(int mvNum);
	
	/**
	 * 리뷰 등록
	 * @param inVO
	 * @return
	 */
	int reviewAdd(MovieReviewVO inVO);
	
	/**
	 * 리뷰 목록조회(페이징)
	 * @param dto
	 * @return
	 */
	List<MovieReviewVO> reviewRetrieve(DTO dto);
	
	/**
	 * 영화목록페이지 영화 조회
	 * @param mvOn
	 * @return
	 */
	List<MovieListVO> getMovieList(int mvOn);
}
