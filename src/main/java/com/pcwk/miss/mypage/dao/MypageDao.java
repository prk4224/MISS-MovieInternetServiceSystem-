package com.pcwk.miss.mypage.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.mypage.domain.HistoryVO;
import com.pcwk.miss.mypage.domain.MemberInfoVO;

public interface MypageDao {
	
	/**
	 * 쿠폰 조회
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	List<CouponVO> getCoupon(MemberVO inVO) throws SQLException;
	/**
	 * 고객정보 조회
	 * @param inVO
	 * @return
	 */
	MemberInfoVO getMember(MemberVO inVO) throws SQLException;
	/**
	 * 구매 목록조회
	 * @param inVO
	 * @return List<HistoryVO>
	 * @throws SQLException
	 */
	List<HistoryVO> ticketRetrieve(MemberVO inVO) throws SQLException;
}
