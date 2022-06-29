package com.pcwk.miss.pay.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.TicketVO;
import com.pcwk.miss.pay.dao.PayDao;
import com.pcwk.miss.pay.domain.ReserveVO;

@Service("payService")
public class PayServiceImpl implements PayService{
	
final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	private PayDao payDao;
	

	@Override
	public List<CouponVO> couponRetrieve(CouponVO inVO) throws SQLException {
		
		return payDao.couponRetrieve(inVO);
	}


	@Override
	public List<ReserveVO> getMovieOn() throws SQLException {
		return payDao.getMovieOn();
	}


	@Override
	public List<ReserveVO> getMovieTime(ReserveVO inVO) throws SQLException {
		return payDao.getMovieTime(inVO);
	}


	@Override
	public int ticketInsert(TicketVO inVO) throws SQLException {
		
		return payDao.ticketInsert(inVO);
	}


	@Override
	public int pointValue(MemberVO inVO) throws SQLException {
		
		return payDao.pointValue(inVO);
	}


	@Override
	public int couponDelete(CouponVO inVO) throws SQLException {
		
		return payDao.couponDelete(inVO);
	}
	

}
