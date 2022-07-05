package com.pcwk.miss.mypage.domain;

import com.pcwk.miss.cmn.DTO;

public class HistoryVO extends DTO {
	private String tNum;//결제번호
	private int tStatus;//결제상태R
	private int tPrice; //결제금액
	private int mvNum;//영화번호
	private String miTime;//상영시간
	private String miVideo;//동영상주소
	private String mvTitle;//영화제목
	private int mvOn;//상영상태
	private int miQuality;//화질
	private int mbNum;//회원번호
	
	public HistoryVO() {}

	public HistoryVO(String tNum, int tStatus, int tPrice, int mvNum, String miTime, String miVideo, String mvTitle,
			int mvOn, int miQuality, int mbNum) {
		super();
		this.tNum = tNum;
		this.tStatus = tStatus;
		this.tPrice = tPrice;
		this.mvNum = mvNum;
		this.miTime = miTime;
		this.miVideo = miVideo;
		this.mvTitle = mvTitle;
		this.mvOn = mvOn;
		this.miQuality = miQuality;
		this.mbNum = mbNum;
	}

	public String gettNum() {
		return tNum;
	}

	public void settNum(String tNum) {
		this.tNum = tNum;
	}

	public int gettStatus() {
		return tStatus;
	}

	public void settStatus(int tStatus) {
		this.tStatus = tStatus;
	}

	public int gettPrice() {
		return tPrice;
	}

	public void settPrice(int tPrice) {
		this.tPrice = tPrice;
	}

	public int getMvNum() {
		return mvNum;
	}

	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}

	public String getMiTime() {
		return miTime;
	}

	public void setMiTime(String miTime) {
		this.miTime = miTime;
	}

	public String getMiVideo() {
		return miVideo;
	}

	public void setMiVideo(String miVideo) {
		this.miVideo = miVideo;
	}

	public String getMvTitle() {
		return mvTitle;
	}

	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}

	public int getMvOn() {
		return mvOn;
	}

	public void setMvOn(int mvOn) {
		this.mvOn = mvOn;
	}

	public int getMiQuality() {
		return miQuality;
	}

	public void setMiQuality(int miQuality) {
		this.miQuality = miQuality;
	}

	public int getMbNum() {
		return mbNum;
	}

	public void setMbNum(int mbNum) {
		this.mbNum = mbNum;
	}

	@Override
	public String toString() {
		return "HistoryVO [tNum=" + tNum + ", tStatus=" + tStatus + ", tPrice=" + tPrice + ", mvNum=" + mvNum
				+ ", miTime=" + miTime + ", miVideo=" + miVideo + ", mvTitle=" + mvTitle + ", mvOn=" + mvOn
				+ ", miQuality=" + miQuality + ", mbNum=" + mbNum + ", toString()=" + super.toString() + "]";
	}

	
}
