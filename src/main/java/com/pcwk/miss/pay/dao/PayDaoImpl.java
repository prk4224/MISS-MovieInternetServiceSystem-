package com.pcwk.miss.pay.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.MovieInfoVO;
import com.pcwk.miss.domain.MovieVO;
import com.pcwk.miss.domain.TicketVO;
import com.pcwk.miss.movie.domain.NowPlayingVO;
import com.pcwk.miss.pay.domain.ReserveVO;

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
		int flag = 0;
        String statement = NAMESPACE+".ticketInsert";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		flag = sqlSessionTemplate.insert(statement, inVO);
		LOG.debug("flag:" + flag);
		return flag;
	}
	
	public List<ReserveVO> getMovieOn() throws SQLException {
		
		List<ReserveVO> list = null;
		String statement = this.NAMESPACE + ".getMovieOn";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=sqlSessionTemplate : " + sqlSessionTemplate);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement);
		for(ReserveVO vo : list) {
			LOG.debug("vo : " + vo);
		}
		
		return list;
	}

	@Override
	public List<ReserveVO> getMovieTime(ReserveVO inVO) throws SQLException {
		
		List<ReserveVO> list = null;
		String statement = this.NAMESPACE + ".getMovieTime";
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=inVO : " + inVO);
		LOG.debug("===========================");
		
		list = this.sqlSessionTemplate.selectList(statement, inVO);
		
		for(ReserveVO vo : list) {
			LOG.debug("vo : " + vo);
		}
		
		return list;
	}

	@Override
	public int pointValue(MemberVO inVO) throws SQLException {
		
		int point = 0;
		String statement = this.NAMESPACE + ".pointValue";
		
		
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=inVO : " + inVO);
		LOG.debug("===========================");
		
		point = sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("===========================");
		LOG.debug("point : " + point);
		LOG.debug("===========================");
		
		return point;
	}


	@Override
	public int pointUpdate(MemberVO inVO) throws SQLException {
		
		int flag = 0;
        String statement = NAMESPACE+".pointUpdate";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		flag = sqlSessionTemplate.update(statement, inVO);
		LOG.debug("flag:" + flag);
		return flag;
	}

	@Override
	public int couponUpdate(CouponVO inVO) throws SQLException {
		int flag = 0;
        String statement = NAMESPACE+".couponUpdate";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		flag = sqlSessionTemplate.update(statement, inVO);
		LOG.debug("flag:" + flag);
		
		return flag;
	}

	@Override
	public MovieVO movieInfo(MovieVO inVO) throws SQLException {
		MovieVO outVO = null;
		
		String statement = NAMESPACE+".movieInfo";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		outVO = sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("outVO : " + outVO);
		
		return outVO;
	}

	@Override
	public CouponVO couponSelete(CouponVO inVO) throws SQLException {
		CouponVO outVO = null;
		
		String statement = NAMESPACE+".couponSelete";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		outVO = sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("outVO : " + outVO);
		
		return outVO;
	}

	@Override
	public MemberVO memberSelete(MemberVO inVO) throws SQLException {
		MemberVO outVO = null;
		
		String statement = NAMESPACE+".memberSelete";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		outVO = sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("outVO : " + outVO);
		
		return outVO;
	}

	@Override
	public int payCount(TicketVO inVO) throws SQLException {
		int count = 0;
		String statement = this.NAMESPACE + ".payCount";
		
		
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=inVO : " + inVO);
		LOG.debug("===========================");
		
		count = sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("===========================");
		LOG.debug("count : " + count);
		LOG.debug("===========================");
		
		return count;
	}

	@Override
	public String posterSelect(MovieVO inVO) throws SQLException {
		String imageUrl = "";
		String statement = this.NAMESPACE + ".posterSelect";
		
		
		LOG.debug("===========================");
		LOG.debug("=statement : " + statement);
		LOG.debug("=inVO : " + inVO);
		LOG.debug("===========================");
		
		imageUrl = sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("===========================");
		LOG.debug("imageUrl : " + imageUrl);
		LOG.debug("===========================");
		
		return imageUrl;
	}

	@Override
	public int memberUpdate(MemberVO inVO) throws SQLException {
		int flag = 0;
        String statement = NAMESPACE+".memberUpdate";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		flag = sqlSessionTemplate.update(statement, inVO);
		LOG.debug("flag:" + flag);
		return flag;
	}

	@Override
	public int couponInsert(CouponVO inVO) throws SQLException {
		int flag = 0;
        String statement = NAMESPACE+".couponInsert";
		LOG.debug("==============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("==============================");	
		
		flag = sqlSessionTemplate.insert(statement, inVO);
		LOG.debug("flag:" + flag);
		return flag;
	}
	
	

}
