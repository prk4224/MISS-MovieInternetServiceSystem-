package com.pcwk.miss;

import static org.junit.Assert.*;

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
import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.movie.dao.MovieDao;
import com.pcwk.miss.movie.domain.MovieDetailVO;
import com.pcwk.miss.movie.domain.MovieListVO;
import com.pcwk.miss.movie.domain.MovieReviewVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.movie.domain.PlayingSoonVO;
import com.pcwk.miss.movie.domain.StillCutVO;
import com.pcwk.miss.movie.domain.WatchMovieVO;

@RunWith(SpringJUnit4ClassRunner.class) // JUnit기능을 스프링 프레임으로 확장
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) // applicationContext.xml loading
public class JUnitMovieDaoTest {

	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired //컨텍스트 프레임워크는 변수 타입과 일치하는 컨텍스트 내의 빈을 찾고, 변수에 주입
	ApplicationContext context;
	
	@Autowired
	MovieDao dao;
	MovieVO movie1;
	SearchVO searchVO;
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("========================");
		LOG.debug("=0.setUp()=");
		LOG.debug("========================");
		
		searchVO = new SearchVO(5, 1, "", "", 4);
				
		LOG.debug("context : " + context);
		LOG.debug("dao : " + dao);
		
		assertNotNull(context);
		assertNotNull(dao);
	}

	@Test
	public void mainGetAllTest() {
		List<NowPlayingVO> list01 = dao.getAllNowPlaying();
		LOG.debug("========================");
		LOG.debug("=list01=" + list01);
		LOG.debug("========================");
		assertEquals(10, list01.size());
		List<PlayingSoonVO> list02 = dao.getAllPlayingSoon();
		LOG.debug("========================");
		LOG.debug("=list02=" + list02);
		LOG.debug("========================");
		assertEquals(10, list02.size());
	}
	
	@Test
	public void screenWatchMovieTest() {
		WatchMovieVO inVO = new WatchMovieVO(7, "", 720, "");
		WatchMovieVO outVO = dao.getWatchMovie(inVO);
		LOG.debug("========================");
		LOG.debug("=outVO=" + outVO);
		LOG.debug("========================");
	}
	
	@Test
	public void movieDetailTest() {
		MovieDetailVO outVO = null;
		outVO = dao.getMovieDetail(4);
		LOG.debug("========================");
		LOG.debug("=outVO=" + outVO);
		LOG.debug("========================");
		LOG.debug("========================");
		//줄거리 : 300 글자수제한
		LOG.debug("outVO.Summary.length : " + outVO.getMvSummary().length());
		LOG.debug("========================");
		
		List<StillCutVO> list = dao.getStillCut(1);
		LOG.debug("========================");
		LOG.debug("=list=" + list);
		LOG.debug("========================");
		assertEquals(4, list.size());
		
	}
	
	@Test
	public void getAllReviewTest() {
		List<MovieReviewVO> list01 = dao.getAllReview(4);
		LOG.debug("========================");
		LOG.debug("=list01=" + list01);
		LOG.debug("========================");
//		assertEquals(6, list01.size());
		List<MovieReviewVO> list02 = dao.getAllReview(5);
		LOG.debug("========================");
		LOG.debug("=list02=" + list02);
		LOG.debug("========================");
		assertEquals(1, list02.size());
	}
	
	@Test
	public void addReviewTest() {
		MovieReviewVO inVO = new MovieReviewVO(4, 0, "ADMIN02", "TEST_REVIE02", 5);
		dao.reviewAdd(inVO);
	}
	
	@Test
	public void reviewRetrieveTest() {
//		searchVO.setPageNum(1);
//		searchVO.setPageSize(5);
		List<MovieReviewVO> list = dao.reviewRetrieve(searchVO);
		for(MovieReviewVO vo : list) {
			LOG.debug("=== vo ===" + vo);
		}
	}
	
	@Test
	public void movieListTest() {
		// 상영종료된 영화 조회
		List<MovieListVO> list = dao.getMovieList(2);
		LOG.debug("=================");
		LOG.debug("=list=" + list);
		LOG.debug("=================");
		
		assertEquals(5, list.size());
	}
}
