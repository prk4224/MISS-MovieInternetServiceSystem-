package com.pcwk.miss.movie.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.miss.cmn.DTO;
import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.dao.MovieDao;
import com.pcwk.miss.movie.domain.MovieDetailVO;
import com.pcwk.miss.movie.domain.MovieListVO;
import com.pcwk.miss.movie.domain.MovieReviewVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.StillCutVO;
import com.pcwk.miss.movie.domain.WatchMovieVO;

@Service("movieService")
public class MovieServiceImpl implements MovieService {

	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	private MovieDao movieDao;
	
	@Override
	public List<NowPlayingVO> getAllNowPlaying() {
		return movieDao.getAllNowPlaying();
	}

	@Override
	public List<PlayingSoonVO> getAllPlayingSoon() {
		return movieDao.getAllPlayingSoon();
	}

	@Override
	public WatchMovieVO getWatchMovie(WatchMovieVO inVO) {
		return movieDao.getWatchMovie(inVO);
	}

	@Override
	public MovieDetailVO getMovieDetail(int mvNum) {
		MovieDetailVO outVO = movieDao.getMovieDetail(mvNum);
		if(outVO.getMvSummary().length() > 300) {
			outVO.setMvSummary(outVO.getMvSummary().substring(0, 299) + "...");
		}
		return outVO;
	}

	@Override
	public List<StillCutVO> getStillCut(int mvNum) {
		return movieDao.getStillCut(mvNum);
	}

	@Override
	public List<MovieReviewVO> getAllReview(int mvNum) {
		return movieDao.getAllReview(mvNum);
	}

	@Override
	public int reviewAdd(MovieReviewVO inVO) {
		return movieDao.reviewAdd(inVO);
	}

	@Override
	public List<MovieReviewVO> reviewRetrieve(DTO dto) {
		return movieDao.reviewRetrieve(dto);
	}

	@Override
	public List<MovieListVO> getMovieList(int mvOn) {
		return movieDao.getMovieList(mvOn);
	}

}
