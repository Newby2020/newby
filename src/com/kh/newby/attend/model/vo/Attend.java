package com.kh.newby.attend.model.vo;

import java.io.Serializable;

public class Attend implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -825851348437539851L;
	
	private String psNo;
	private String cName;
	private String psDate;
	private String psStartTime;
	private String psEndTime;
	private int cMaxnum;
	private int peopleCount;
	public String getPsNo() {
		return psNo;
	}
	public void setPsNo(String psNo) {
		this.psNo = psNo;
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
	public String getPsEndTime() {
		return psEndTime;
	}
	public void setPsEndTime(String psEndTime) {
		this.psEndTime = psEndTime;
	}
	public int getcMaxnum() {
		return cMaxnum;
	}
	public void setcMaxnum(int cMaxnum) {
		this.cMaxnum = cMaxnum;
	}
	public int getPeopleCount() {
		return peopleCount;
	}
	public void setPeopleCount(int peopleCount) {
		this.peopleCount = peopleCount;
	}
	@Override
	public String toString() {
		return "Attend [psNo=" + psNo + ", cName=" + cName + ", psDate=" + psDate + ", psStartTime=" + psStartTime
				+ ", psEndTime=" + psEndTime + ", cMaxnum=" + cMaxnum + ", peopleCount=" + peopleCount + "]";
	}
	
	
	
	
	
}
