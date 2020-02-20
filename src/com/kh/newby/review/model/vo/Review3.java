package com.kh.newby.review.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Review3 implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2714296985536899669L;
	

	private String cNo;
	private String mNo;
	private int rPoint ;
	private String rContent;
	
	public Review3() {}

	public Review3(String cNo, String mNo, int rPoint, String rContent) {
		super();
		this.cNo = cNo;
		this.mNo = mNo;
		this.rPoint = rPoint;
		this.rContent = rContent;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getmNo() {
		return mNo;
	}

	public void setmNo(String mNo) {
		this.mNo = mNo;
	}

	public int getrPoint() {
		return rPoint;
	}

	public void setrPoint(int rPoint) {
		this.rPoint = rPoint;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	
}