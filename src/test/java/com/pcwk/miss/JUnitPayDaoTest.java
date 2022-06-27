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
	ReserveVO reserveVO;
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("========================");
		LOG.debug("=0.setUp()=");
		LOG.debug("========================");
		
		couponVO = new CouponVO(2,1,"생일 쿠폰", "날짜_미정", 1, 30, 0);
		
		reserveVO = new ReserveVO();
		
		LOG.debug("context : " + context);
		LOG.debug("dao : " + dao);
		
		assertNotNull(context);
		assertNotNull(dao);
		
	}
	
	@Test
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
	

}
