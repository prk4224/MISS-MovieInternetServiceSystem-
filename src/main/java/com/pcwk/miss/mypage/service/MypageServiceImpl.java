package com.pcwk.miss.mypage.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.mypage.dao.MypageDao;
import com.pcwk.miss.mypage.domain.HistoryVO;
import com.pcwk.miss.mypage.domain.MemberInfoVO;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {
final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	private MypageDao mypageDao;
	
	public MypageServiceImpl() {
		
	}
	
	@Override
	public List<HistoryVO> ticketRetrieve(MemberVO inVO) throws SQLException {
		return mypageDao.ticketRetrieve(inVO);
	}

	@Override
	public MemberInfoVO getMember(MemberVO inVO) throws SQLException {
	
		return mypageDao.getMember(inVO);
	}

	@Override
	public List<CouponVO> getCoupon(MemberVO inVO) throws SQLException {
		return mypageDao.getCoupon(inVO);
	}

	@Override
	public int updateTicket(HistoryVO inVO) throws SQLException {
		return mypageDao.updateTicket(inVO);
	}

	

}
