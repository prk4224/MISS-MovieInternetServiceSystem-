package com.pcwk.miss.movie.dao;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.cmn.DTO;
import com.pcwk.miss.cmn.SearchVO;
import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.domain.MovieDetailVO;
import com.pcwk.miss.movie.domain.MovieListVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.MovieReviewVO;
import com.pcwk.miss.movie.domain.StillCutVO;
import com.pcwk.miss.movie.domain.WatchMovieVO;

@Repository("movieDao")
public class MovieDaoImpl implements MovieDao {

	final Logger LOG = LogManager.getLogger(this.getClass());
	
	// mybatis namespace
	final String NAMESPACE = "com.pcwk.miss.movie";
	
	// mybatis db연결객체
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public MovieDaoImpl() {
		
	}

	@Override
	public List<NowPlayingVO> getAllNowPlaying() {
		List<NowPlayingVO> list = null;
		String statement = this.NAMESPACE + ".getAllNowPlaying";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=sqlSessionTemplate : " + sqlSessionTemplate);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement);
		for(NowPlayingVO vo : list) {
			LOG.debug("vo : " + vo.toString());
		}
		return list;
	}

	@Override
	public List<PlayingSoonVO> getAllPlayingSoon() {
		List<PlayingSoonVO> list = null;
		String statement = this.NAMESPACE + ".getAllPlayingSoon";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=sqlSessionTemplate : " + sqlSessionTemplate);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement);
		for(PlayingSoonVO vo : list) {
			LOG.debug("vo : " + vo.toString());
		}
		return list;
	}

	@Override
	public WatchMovieVO getWatchMovie(WatchMovieVO inVO) {
		WatchMovieVO outVO = null;
		
		String statement = this.NAMESPACE + ".getWatchMovie";	
		LOG.debug("============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		
		outVO = this.sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("============================");
		LOG.debug("=outVO=" + outVO.toString());
		LOG.debug("============================");
		return outVO;
	}

	@Override
	public MovieDetailVO getMovieDetail(int mvNum) {
		MovieDetailVO outVO = null;
		
		String statement = this.NAMESPACE + ".getMovieDetail";
		LOG.debug("============================");
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		
		outVO = this.sqlSessionTemplate.selectOne(statement, mvNum);
		LOG.debug("============================");
		LOG.debug("=outVO=" + outVO.toString());
		LOG.debug("============================");
		return outVO;
	}

	@Override
	public List<StillCutVO> getStillCut(int mvNum) {
		List<StillCutVO> outVO = null;
		
		String statement = this.NAMESPACE + ".getStillCut";
		LOG.debug("============================");
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		
		outVO = this.sqlSessionTemplate.selectList(statement, mvNum);
		LOG.debug("============================");
		LOG.debug("=outVO=" + outVO.toString());
		LOG.debug("============================");
		return outVO;
	}

	@Override
	public List<MovieReviewVO> getAllReview(int mvNum) {
		List<MovieReviewVO> list = null;
		String statement = this.NAMESPACE + ".getAllReview";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("===========================");
		
		list = sqlSessionTemplate.selectList(statement, mvNum);
		for(MovieReviewVO vo : list) {
			LOG.debug("vo : " + vo);
		}
		return list;
	}

	@Override
	public int reviewAdd(MovieReviewVO inVO) {
		int flag = 0;
		
		String statement = this.NAMESPACE + ".reviewAdd";
		LOG.debug("============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		
		flag = this.sqlSessionTemplate.insert(statement, inVO);
		LOG.debug("flag : " + flag);
		
		return flag;
	}

	@Override
	public List<MovieReviewVO> reviewRetrieve(DTO dto) {
		SearchVO inVO = (SearchVO)dto;
		String statement = this.NAMESPACE + ".reviewRetrieve";
		LOG.debug("============================");
		LOG.debug("param:" + dto.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		List<MovieReviewVO> list = sqlSessionTemplate.selectList(statement, inVO);
		for(MovieReviewVO vo : list) {
			LOG.debug("vo : " + vo);
		}
		return list;
	}

	@Override
	public List<MovieListVO> getMovieList(int mvOn) {
		List<MovieListVO> list = null;
		String statement = this.NAMESPACE + ".getMovieList";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("===========================");
		
		list = sqlSessionTemplate.selectList(statement, mvOn);
		for(MovieListVO vo : list) {
			LOG.debug("vo : " + vo);
		}
		return list;
	}

}
