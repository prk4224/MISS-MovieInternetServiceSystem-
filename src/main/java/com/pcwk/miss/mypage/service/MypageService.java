package com.pcwk.miss.mypage.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.mypage.domain.HistoryVO;
import com.pcwk.miss.mypage.domain.MemberInfoVO;

public interface MypageService {
	
	
	/**
	 * 티켓 수정
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	int updateTicket(HistoryVO inVO) throws SQLException;
	/**
	 * 쿠폰조회
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	List<CouponVO> getCoupon(MemberVO inVO) throws SQLException;
	/**
	 * 회원정보조회
	 * @param inVO
	 * @return
	 */
	MemberInfoVO getMember(MemberVO inVO) throws SQLException;
	/**
	 * 티켓 목록조회
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	List<HistoryVO> ticketRetrieve(MemberVO inVO) throws SQLException;
}
