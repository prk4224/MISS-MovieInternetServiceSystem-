package com.pcwk.miss.mypage.domain;

import com.pcwk.miss.cmn.DTO;

public class MemberInfoVO extends DTO {
	private int mbNum; //회원번호
	private String mbEmail; //이메일
	private String mbName; //이름
	private String mbTel; //전화번호
	private String mbBirth; //생일
	private String mbNickname; //닉네임
	private int mbGrade; //회원등급
	private int mbPoint; //포인트
	
	public MemberInfoVO() {}

	public MemberInfoVO(int mbNum, String mbEmail, String mbName, String mbTel, String mbBirth, String mbNickname,
			int mbGrade, int mbPoint) {
		super();
		this.mbNum = mbNum;
		this.mbEmail = mbEmail;
		this.mbName = mbName;
		this.mbTel = mbTel;
		this.mbBirth = mbBirth;
		this.mbNickname = mbNickname;
		this.mbGrade = mbGrade;
		this.mbPoint = mbPoint;
	}

	public int getMbNum() {
		return mbNum;
	}

	public void setMbNum(int mbNum) {
		this.mbNum = mbNum;
	}

	public String getMbEmail() {
		return mbEmail;
	}

	public void setMbEmail(String mbEmail) {
		this.mbEmail = mbEmail;
	}

	public String getMbName() {
		return mbName;
	}

	public void setMbName(String mbName) {
		this.mbName = mbName;
	}

	public String getMbTel() {
		return mbTel;
	}

	public void setMbTel(String mbTel) {
		this.mbTel = mbTel;
	}

	public String getMbBirth() {
		return mbBirth;
	}

	public void setMbBirth(String mbBirth) {
		this.mbBirth = mbBirth;
	}

	public String getMbNickname() {
		return mbNickname;
	}

	public void setMbNickname(String mbNickname) {
		this.mbNickname = mbNickname;
	}

	public int getMbGrade() {
		return mbGrade;
	}

	public void setMbGrade(int mbGrade) {
		this.mbGrade = mbGrade;
	}

	public int getMbPoint() {
		return mbPoint;
	}

	public void setMbPoint(int mbPoint) {
		this.mbPoint = mbPoint;
	}

	@Override
	public String toString() {
		return "MemberInfoVO [mbNum=" + mbNum + ", mbEmail=" + mbEmail + ", mbName=" + mbName + ", mbTel=" + mbTel
				+ ", mbBirth=" + mbBirth + ", mbNickname=" + mbNickname + ", mbGrade=" + mbGrade + ", mbPoint="
				+ mbPoint + ", toString()=" + super.toString() + "]";
	}

	
	
}
