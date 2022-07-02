package com.pcwk.miss.login.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.miss.cmn.MessageVO;
import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.login.dao.LoginDao;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;
	
	public LoginServiceImpl() {
		
	}
	
	@Override
	public MessageVO existingMember(MemberVO inVO) throws SQLException {
		// 1이면 기존회원
		// 0이면 신규회원
		MessageVO message = new MessageVO();
		int flag = loginDao.existingMember(inVO);
		if(flag == 0) {
			message.setMsgId("0");
			message.setMsgContents("신규회원입니다 ! 추가 정보 입력을 위해 다음페이지로 이동합니다.");
		}else {
			message.setMsgId("1");
			message.setMsgContents("기존회원입니다 ! 메인페이지로 이동합니다.");
		}
		return message;
	}

	@Override
	public int doInsert(MemberVO inVO) throws SQLException {
		return loginDao.doInsert(inVO);
	}

	@Override
	public MemberVO emailToNum(MemberVO inVO) throws SQLException {
		return loginDao.emailToNum(inVO);
	}

	@Override
	public int registerCoupon(CouponVO inVO) throws SQLException {
		return loginDao.registerCoupon(inVO);
	}
}
