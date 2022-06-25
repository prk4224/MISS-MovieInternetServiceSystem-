package com.pcwk.miss.movie.dao;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
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

}
