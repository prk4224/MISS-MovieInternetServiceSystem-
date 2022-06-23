package com.pcwk.miss.movie.dao;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.domain.MovieVO;

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
	public List<MovieVO> getAll() {
		List<MovieVO> list = null;
		String statement = this.NAMESPACE + ".getAll";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=sqlSessionTemplate : " + sqlSessionTemplate);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement);
		for(MovieVO vo : list) {
			LOG.debug("vo : " + vo.toString());
//			LOG.debug("vo.getMvNum" + vo.getMvNum());
			statement = "";
			statement = this.NAMESPACE + ".getPoster";
			String poster = this.sqlSessionTemplate.selectOne(statement, vo.getMvNum());
			vo.setMvSummary(poster);
		}
		return list;
	}
	
	

}
