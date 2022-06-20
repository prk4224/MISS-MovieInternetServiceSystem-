/**
* <pre>
* com.pcwk.miss.domain
* Class Name : MovieVO.java
* Description:
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
package com.pcwk.miss.domain;

import com.pcwk.miss.cmn.DTO;

/**
 * @author ITSC
 *
 */
public class MovieVO extends DTO {
	private int mv_num; //fasd
	private String mv_title;
	private String mv_director;
	private String mv_actor;
	private String mv_genre;
	private String mv_released;
	private int mv_agelimit;
	private String mv_summary;
	private String mv_nation;
	private String mv_time;
	
	public MovieVO() {}

	public MovieVO(int mv_num, String mv_title, String mv_director, String mv_actor, String mv_genre,
			String mv_released, int mv_agelimit, String mv_summary, String mv_nation, String mv_time) {
		super();
		this.mv_num = mv_num;
		this.mv_title = mv_title;
		this.mv_director = mv_director;
		this.mv_actor = mv_actor;
		this.mv_genre = mv_genre;
		this.mv_released = mv_released;
		this.mv_agelimit = mv_agelimit;
		this.mv_summary = mv_summary;
		this.mv_nation = mv_nation;
		this.mv_time = mv_time;
	}

	public int getMv_num() {
		return mv_num;
	}

	public void setMv_num(int mv_num) {
		this.mv_num = mv_num;
	}

	public String getMv_title() {
		return mv_title;
	}

	public void setMv_title(String mv_title) {
		this.mv_title = mv_title;
	}

	public String getMv_director() {
		return mv_director;
	}

	public void setMv_director(String mv_director) {
		this.mv_director = mv_director;
	}

	public String getMv_actor() {
		return mv_actor;
	}

	public void setMv_actor(String mv_actor) {
		this.mv_actor = mv_actor;
	}

	public String getMv_genre() {
		return mv_genre;
	}

	public void setMv_genre(String mv_genre) {
		this.mv_genre = mv_genre;
	}

	public String getMv_released() {
		return mv_released;
	}

	public void setMv_released(String mv_released) {
		this.mv_released = mv_released;
	}

	public int getMv_agelimit() {
		return mv_agelimit;
	}

	public void setMv_agelimit(int mv_agelimit) {
		this.mv_agelimit = mv_agelimit;
	}

	public String getMv_summary() {
		return mv_summary;
	}

	public void setMv_summary(String mv_summary) {
		this.mv_summary = mv_summary;
	}

	public String getMv_nation() {
		return mv_nation;
	}

	public void setMv_nation(String mv_nation) {
		this.mv_nation = mv_nation;
	}

	public String getMv_time() {
		return mv_time;
	}

	public void setMv_time(String mv_time) {
		this.mv_time = mv_time;
	}

	@Override
	public String toString() {
		return "MovieVO [mv_num=" + mv_num + ", mv_title=" + mv_title + ", mv_director=" + mv_director + ", mv_actor="
				+ mv_actor + ", mv_genre=" + mv_genre + ", mv_released=" + mv_released + ", mv_agelimit=" + mv_agelimit
				+ ", mv_summary=" + mv_summary + ", mv_nation=" + mv_nation + ", mv_time=" + mv_time + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
}