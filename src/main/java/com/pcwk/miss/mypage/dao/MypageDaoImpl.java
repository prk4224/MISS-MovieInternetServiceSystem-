package com.pcwk.miss.mypage.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.mypage.domain.HistoryVO;
import com.pcwk.miss.mypage.domain.MemberInfoVO;

@Repository("mypageDao")
public class MypageDaoImpl implements MypageDao {
	final Logger LOG = LogManager.getLogger(getClass());
	
	// mybatis namespace
		final String NAMESPACE = "com.pcwk.miss.mypage";
	
	// mybatis db연결객체
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
			
	public MypageDaoImpl () {}
	
	@Override
	public List<HistoryVO> ticketRetrieve(MemberVO inVO) throws SQLException {
		List<HistoryVO> list = new ArrayList<HistoryVO>();
		String statement = this.NAMESPACE + ".ticketRetrieve";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=sqlSessionTemplate : " + sqlSessionTemplate);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement, inVO);
		
		for(HistoryVO vo : list) {
			LOG.debug(vo);
			LOG.debug("vo : " + vo.toString());
		}
		return list;
	}

	@Override
	public MemberInfoVO getMember(MemberVO inVO) {
		MemberInfoVO outVO = null;
		String statement = this.NAMESPACE + ".getMember";	
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
	public List<CouponVO> getCoupon(MemberVO inVO) throws SQLException {
		List<CouponVO> list = new ArrayList<CouponVO>();
		String statement = this.NAMESPACE + ".getCoupon";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=sqlSessionTemplate : " + sqlSessionTemplate);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement, inVO);
		
		for(CouponVO vo : list) {
			LOG.debug(vo);
			LOG.debug("vo : " + vo.toString());
		}
		return list;
	}

	@Override
	public int updateTicket(HistoryVO inVO) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACE + ".updateTicket";
		LOG.debug("============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement: " + statement);
		LOG.debug("============================");
		
		flag = sqlSessionTemplate.update(statement, inVO);
		LOG.debug("flag : " + flag);
		return flag;
	}

	
}
