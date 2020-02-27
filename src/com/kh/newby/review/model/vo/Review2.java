package com.kh.newby.review.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Review2 implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8411819078439453431L;

	private String rNo;
	private String cNo;
	private String cName;
	private int cTime;
	private String psDate;
	private String psStartTime;
	private String psEndTime;
	private String psNo;
	private String psDatePlus10;
	


	public String getPsNo() {
		return psNo;
	}


	public void setPsNo(String psNo) {
		this.psNo = psNo;
	}


	public String getPsEndTime() {
		return psEndTime;
	}


	public void setPsEndTime(String psEndTime) {
		this.psEndTime = psEndTime;
	}


	public Review2() {
	}


	public int getcTime() {
		return cTime;
	}


	public void setcTime(int cTime) {
		this.cTime = cTime;
	}


	public String getrNo() {
		return rNo;
	}


	public void setrNo(String rNo) {
		this.rNo = rNo;
	}


	public String getcNo() {
		return cNo;
	}


	public void setcNo(String cNo) {
		this.cNo = cNo;
	}


	public String getcName() {
		return cName;
	}


	public void setcName(String cName) {
		this.cName = cName;
	}


	public String getPsDate() {
		return psDate;
	}


	public void setPsDate(String psDate) {
		this.psDate = psDate;
	}

	public String getPsStartTime() {
		return psStartTime;
	}
	
	
	public void setPsStartTime(String psStartTime) {
		this.psStartTime = psStartTime;
	}


	public String getPsDatePlus10() {
		return psDatePlus10;
	}


	public void setPsDatePlus10(String psDatePlus10) {
		this.psDatePlus10 = psDatePlus10;
	}

}
