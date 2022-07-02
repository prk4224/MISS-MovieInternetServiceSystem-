package com.pcwk.miss.login.service;

import java.sql.SQLException;

import com.pcwk.miss.cmn.MessageVO;
import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;

public interface LoginService {
	
	/**
	 * 기존회원인지 아닌지 check
	 * @param inVO
	 * @return 1이면 기존회원 / 0이면 신규회원
	 * @throws SQLException
	 */
	public MessageVO existingMember(MemberVO inVO) throws SQLException;
	
	/**
	 * 회원가입
	 * @param inVO
	 * @return 1(성공) / 0(실패)
	 * @throws SQLException
	 */
	public int doInsert(MemberVO inVO) throws SQLException;
	
	/**
	 * 이메일 -> mbNum
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	public MemberVO emailToNum(MemberVO inVO) throws SQLException;
	
	/**
	 * 신규회원가입 쿠폰발급
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	public int registerCoupon(CouponVO inVO) throws SQLException; 
}
