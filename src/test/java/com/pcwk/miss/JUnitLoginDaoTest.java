package com.pcwk.miss;

import static org.junit.Assert.*;

import java.sql.SQLException;

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

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.login.dao.LoginDao;
@RunWith(SpringJUnit4ClassRunner.class) // JUnit기능을 스프링 프레임으로 확장
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) // applicationContext.xml loading
public class JUnitLoginDaoTest {

	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired //컨텍스트 프레임워크는 변수 타입과 일치하는 컨텍스트 내의 빈을 찾고, 변수에 주입
	ApplicationContext context;
	
	@Autowired
	LoginDao dao;
	
	MemberVO member;
	MemberVO member2;
	CouponVO coupon01;
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("========================");
		LOG.debug("=0.setUp()=");
		LOG.debug("========================");
		
		member = new MemberVO(1, "chaewon1130@naver.com", "", "", "", "", 1, 0);
		member2 = new MemberVO(333, "테스트이메일3", "테스트이름", "테스트전번", "2022/06/29", "테스트닉네임", 1, 0);
		LOG.debug("context : " + context);
		LOG.debug("dao : " + dao);
		
		coupon01 = new CouponVO(0, 81, "", 0, 0, 0);
		
		assertNotNull(context);
		assertNotNull(dao);
	}
	
	@Test
	public void registerCouponTest() throws SQLException{
		dao.registerCoupon(coupon01);
	}
	
	@Test
	@Ignore
	public void emailToNumTest() throws SQLException{
		MemberVO outVO = dao.emailToNum(member);
		assertEquals(41, outVO.getMbNum());
	}
	
	@Test
	@Ignore
	public void doInsertTest() throws SQLException{
		dao.doInsert(member2);
	}

	@Test
	@Ignore
	public void existingMemberTest() throws SQLException {
		member.setMbEmail("chaewon1130@naver.com");
		int count = dao.existingMember(member);
		// 기존회원
		assertEquals(1, count);
		member.setMbEmail("error_email");
		count = dao.existingMember(member);
		// 신규회원
		assertEquals(0, count);
	}

}
