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

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.domain.TicketVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.pay.dao.PayDao;
import com.pcwk.miss.pay.domain.ReserveVO;


@RunWith(SpringJUnit4ClassRunner.class) // JUnit기능을 스프링 프레임으로 확장
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) // applicationContext.xml loading
public class JUnitPayDaoTest {
	
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired //컨텍스트 프레임워크는 변수 타입과 일치하는 컨텍스트 내의 빈을 찾고, 변수에 주입
	ApplicationContext context;
	
	@Autowired
	PayDao dao;
	
	CouponVO couponVO;
	TicketVO ticketVO;
	MemberVO memberVO;
	ReserveVO reserveVO;
	MovieVO movieVO;
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("========================");
		LOG.debug("=0.setUp()=");
		LOG.debug("========================");
		
		couponVO = new CouponVO(1,1,"생일 쿠폰",  1, 30, 0);
		memberVO = new MemberVO(1,"회원아이디","회원이름","전화번호", "생월일","닉네임", 1, 4000);
		reserveVO = new ReserveVO();
		movieVO = new MovieVO();
		movieVO.setMvNum(1);
		
		LOG.debug("context : " + context);
		LOG.debug("dao : " + dao);
		
		assertNotNull(context);
		assertNotNull(dao);
		
	}
	
	
	@Test
	public void posterSelect() throws SQLException{
		
		LOG.debug("====================");
		LOG.debug("=posterSelect()=");
		LOG.debug("====================");
		
		String URL = dao.posterSelect(movieVO);
		
		LOG.debug("========================");
		LOG.debug("=URL=" + URL);
		LOG.debug("========================");
	}
	
	@Test
	@Ignore
	public void movieInfo() throws SQLException {
		LOG.debug("====================");
		LOG.debug("=movieInfo()=");
		LOG.debug("====================");
		
		movieVO.setMvNum(1);
		
		movieVO = dao.movieInfo(movieVO);
		
		LOG.debug("========================");
		LOG.debug("=movieVO=" + movieVO);
		LOG.debug("========================");
		
		
	}
	
	
	@Test
	@Ignore
	public void pointUpdate() throws SQLException {
		LOG.debug("====================");
		LOG.debug("=pointValue()=");
		LOG.debug("====================");
		
		int flag = dao.pointUpdate(memberVO);
		

		LOG.debug("========================");
		LOG.debug("=flag=" + flag);
		LOG.debug("========================");
		
	}
	
	@Test
	@Ignore
	public void pointValue() throws SQLException {
		 LOG.debug("====================");
		 LOG.debug("=pointValue()=");
		 LOG.debug("====================");
		 
		int point = dao.pointValue(memberVO);
		 
		LOG.debug("========================");
		LOG.debug("=point=" + point);
		LOG.debug("========================");
		
	}
	
	@Test
	@Ignore
	public void ticketInsert() throws SQLException {
		 LOG.debug("====================");
		 LOG.debug("=ticketInsert()=");
		 LOG.debug("====================");
		 
		 
		 dao.ticketInsert(ticketVO);
	}
	
	@Test
	@Ignore
	public void getMovieTime() throws SQLException{
		reserveVO.setMvNum(6);
		reserveVO.setMiQuality(1080);
		List<ReserveVO> list = dao.getMovieTime(reserveVO);
		LOG.debug("========================");
		LOG.debug("=list=" + list);
		LOG.debug("========================");
		assertEquals(2, list.size());
	}
	
	@Test
	@Ignore
	public void getMovieOn() throws SQLException{
		List<ReserveVO> list = dao.getMovieOn();
		LOG.debug("========================");
		LOG.debug("=list=" + list);
		LOG.debug("========================");
		assertEquals(10, list.size());
	}

	@Test
	@Ignore
	public void couponRetrieve()  throws SQLException {
		LOG.debug("========================");
		LOG.debug("=couponRetrieve()=");
		LOG.debug("========================");
		
		List<CouponVO> list = dao.couponRetrieve(couponVO);
		
		LOG.debug("========================");
		LOG.debug("=list=" + list);
		LOG.debug("========================");
		
		
	}
	
	@Test
	@Ignore
	public void couponUpdate() throws SQLException{
		LOG.debug("========================");
		LOG.debug("=couponDelete()=");
		LOG.debug("========================");
		
		dao.couponUpdate(couponVO);
	}
	

}
