package com.pcwk.miss.movie.domain;

import com.pcwk.miss.cmn.DTO;

public class MovieListVO extends DTO {
    private int mvNum; //영화번호
    private String mvTitle; //영화제목
    private String mvReleased; //개봉일
    private int mvAgelimit; //연령제한
    private int mvOn; //상영현황
    private String imRoute; //메인포스터
    
    public MovieListVO() {
    	
    }

	public MovieListVO(int mvNum, String mvTitle, String mvReleased, int mvAgelimit, int mvOn, String imRoute) {
		super();
		this.mvNum = mvNum;
		this.mvTitle = mvTitle;
		this.mvReleased = mvReleased;
		this.mvAgelimit = mvAgelimit;
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

	public String getMvReleased() {
		return mvReleased;
	}

	public void setMvReleased(String mvReleased) {
		this.mvReleased = mvReleased;
	}

	public int getMvAgelimit() {
		return mvAgelimit;
	}

	public void setMvAgelimit(int mvAgelimit) {
		this.mvAgelimit = mvAgelimit;
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
		return "MovieListVO [mvNum=" + mvNum + ", mvTitle=" + mvTitle + ", mvReleased=" + mvReleased + ", mvAgelimit="
				+ mvAgelimit + ", mvOn=" + mvOn + ", imRoute=" + imRoute + ", toString()=" + super.toString() + "]";
	};
    
}
