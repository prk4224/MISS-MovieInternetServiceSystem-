package com.pcwk.miss.pay.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.TicketVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;

@Repository("payDao")
public class PayDaoImpl implements PayDao {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	// mybatis namespace
	final String NAMESPACE = "com.pcwk.miss.pay";
	
	// mybatis db연결객체
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public PayDaoImpl () {}

	@Override
	public List<CouponVO> couponRetrieve(CouponVO inVO) throws SQLException {
		
		List<CouponVO> list = null;
		String statement = this.NAMESPACE + ".couponRetrieve";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=sqlSessionTemplate : " + sqlSessionTemplate);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement, inVO);
		for(CouponVO vo : list) {
			LOG.debug("vo : " + vo.toString());
		}
		return list;
	}

	@Override
	public int ticketInsert(TicketVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
