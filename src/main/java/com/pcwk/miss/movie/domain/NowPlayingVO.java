/**
* <pre>
* com.pcwk.miss.movie.domain
* Class Name : NowPlayingVO.java
* Description: main.jsp 현재상영중 영화
* Author: ITSC
* Since: 2022/06/20
* Version 0.1
* Copyright (C) by KandJang All right reserved.
* Modification Information
* 수정일   수정자    수정내용
*-----------------------------------------------------
*2022/06/20 최초생성
*-----------------------------------------------------
* </pre>
*/
package com.pcwk.miss.movie.domain;
import com.pcwk.miss.cmn.DTO;

/**
 * @author ITSC
 *
 */


public class NowPlayingVO extends DTO{
	private int mvNum; //영화번호
	private String mvTitle; //제목
	private String mvDirector; //감독
	private String mvActor; //배우
	private int mvTime; //러닝타임
	private int mvOn; //상영여부(상영종료 0, 상영중 1, 상영예정 2)
	private String imRoute; //파일경로
	
	public NowPlayingVO() {
		
	}

	public NowPlayingVO(int mvNum, String mvTitle, String mvDirector, String mvActor, int mvTime, int mvOn,
			String imRoute) {
		super();
		this.mvNum = mvNum;
		this.mvTitle = mvTitle;
		this.mvDirector = mvDirector;
		this.mvActor = mvActor;
		this.mvTime = mvTime;
		this.mvOn = mvOn;
		this.imRoute = imRoute;
	}

	public int getMvNum() {
		return mvNum;
	}

	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}

	public String getMvTitle() {
		return mvTitle;
	}

	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}

	public String getMvDirector() {
		return mvDirector;
	}

	public void setMvDirector(String mvDirector) {
		this.mvDirector = mvDirector;
	}

	public String getMvActor() {
		return mvActor;
	}

	public void setMvActor(String mvActor) {
		this.mvActor = mvActor;
	}

	public int getMvTime() {
		return mvTime;
	}

	public void setMvTime(int mvTime) {
		this.mvTime = mvTime;
	}

	public int getMvOn() {
		return mvOn;
	}

	public void setMvOn(int mvOn) {
		this.mvOn = mvOn;
	}

	public String getImRoute() {
		return imRoute;
	}

	public void setImRoute(String imRoute) {
		this.imRoute = imRoute;
	}

	@Override
	public String toString() {
		return "NowPlayingVO [mvNum=" + mvNum + ", mvTitle=" + mvTitle + ", mvDirector=" + mvDirector + ", mvActor="
				+ mvActor + ", mvTime=" + mvTime + ", mvOn=" + mvOn + ", imRoute=" + imRoute + ", toString()="
				+ super.toString() + "]";
	}
	
}
