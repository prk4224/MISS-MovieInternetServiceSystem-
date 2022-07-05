package com.pcwk.miss;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.pcwk.miss.cmn.SearchVO;
import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.mypage.dao.MypageDao;
import com.pcwk.miss.mypage.domain.HistoryVO;
import com.pcwk.miss.mypage.domain.MemberInfoVO;


@RunWith(SpringJUnit4ClassRunner.class) // JUnit기능을 스프링 프레임으로 확장
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) // applicationContext.xml loading
public class JUnitMypageDaoTest {
	
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired 
	ApplicationContext context;
	
	@Autowired
	MypageDao dao;
	
	HistoryVO history01;
	HistoryVO history02;
	HistoryVO history03;
	SearchVO search;
	
	CouponVO coupon01;
	MemberInfoVO member01;
	MemberVO member;
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("========================");
		LOG.debug("=0.setUp()=");
		LOG.debug("========================");
	
				
//		history01 = new HistoryVO("14234",1,6,"22/02/22","https://naver.com","네이버",1,1080,1);
		//history02 = new HistoryVO(142342,1,7,140,"https://daum.com","다음",1,760,3);
		//history03 = new HistoryVO(14234,1,8,160,"https://nate.com","네이트",1,540,4);
//		coupon01 = new CouponVO(4124,4,"생일","22/02/22",1,1,1);
//		member01 = new MemberInfoVO(4,"김김",1000,1);
		member = new MemberVO(1, "", "", "", "", "", 1, 0);
	
		LOG.debug("context : " + context);
		LOG.debug("dao : " + dao);
		
		assertNotNull(context);
		assertNotNull(dao);
	}
	
	
	@Test
	//@Ignore
	public void ticketRetrieveTest() throws SQLException {
		LOG.debug("========================");
		List<HistoryVO> list = dao.ticketRetrieve(member);
		for(HistoryVO vo : list) {
			LOG.debug("=vo=" + vo);
		}
		
		
		assertEquals(2, list.size());
		
	}
	
	@Test
	@Ignore
	public void updateTest() throws SQLException{
		LOG.debug("========================");
		LOG.debug("=update()=");
		LOG.debug("========================");
		
		HistoryVO hisVO = history01;
		
		hisVO.settStatus(0);
	}
	
	@Test
	@Ignore
	public void getMemberTest() throws SQLException {
//		MemberInfoVO inVO = new MemberInfoVO(4, "", 1000, 1);
		MemberInfoVO inVO = dao.getMember(member);
		LOG.debug("========================");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("========================");
	}
	
	@Test
	@Ignore
	public void getCouponTest() throws SQLException {
		LOG.debug("========================");
		List<CouponVO> list = dao.getCoupon(member);
		for(CouponVO vo : list) {
			LOG.debug("=vo=" + vo);
		}
		assertEquals(1, list.size());
		
	}
}
