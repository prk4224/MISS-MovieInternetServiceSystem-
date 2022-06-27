package com.pcwk.miss.faq.domain;

import com.pcwk.miss.cmn.DTO;

public class FaqVO extends DTO {
	private int qNum; //게시순번
	private int qKind; //종류(1공지, 2질문)
	private String qTitle; //제목
	private String qContents; //내용
	private String qDate; //작성일
	
	public FaqVO() {
		
	}

	public FaqVO(int qNum, int qKind, String qTitle, String qContents, String qDate) {
		super();
		this.qNum = qNum;
		this.qKind = qKind;
		this.qTitle = qTitle;
		this.qContents = qContents;
		this.qDate = qDate;
	}

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public int getqKind() {
		return qKind;
	}

	public void setqKind(int qKind) {
		this.qKind = qKind;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContents() {
		return qContents;
	}

	public void setqContents(String qContents) {
		this.qContents = qContents;
	}

	public String getqDate() {
		return qDate;
	}

	public void setqDate(String qDate) {
		this.qDate = qDate;
	}

	@Override
	public String toString() {
		return "FaqVO [qNum=" + qNum + ", qKind=" + qKind + ", qTitle=" + qTitle + ", qContents=" + qContents
				+ ", qDate=" + qDate + ", toString()=" + super.toString() + "]";
	}
	
}
