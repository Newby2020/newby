package com.kh.newby.pay.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Payment implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4292706613464313014L;
	

	private String pDate;
	private String cName;
	private int payMile;
	private int saveMile;
	private int totalPrice;	// 유저가 선택한 일정들의 갯수*회당 가격
	private String cancelDate;
	private String cDate;
	private String cStartTime;
	private String cEndTime;
	private String cTime;
	
	public String getpDate() {
		return pDate;
	}
	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getPayMile() {
		return payMile;
	}
	public void setPayMile(int payMile) {
		this.payMile = payMile;
	}
	public int getSaveMile() {
		return saveMile;
	}
	public void setSaveMile(int saveMile) {
		this.saveMile = saveMile;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getCancelDate() {
		return cancelDate;
	}
	public void setCancelDate(String cancelDate) {
		this.cancelDate = cancelDate;
	}
	public String getcDate() {
		return cDate;
	}
	public void setcDate(String cDate) {
		this.cDate = cDate;
	}
	public String getcStartTime() {
		return cStartTime;
	}
	public void setcStartTime(String cStartTime) {
		this.cStartTime = cStartTime;
	}
	public String getcEndTime() {
		return cEndTime;
	}
	public void setcEndTime(String cEndTime) {
		this.cEndTime = cEndTime;
	}
	public String getcTime() {
		return cTime;
	}
	public void setcTime(String cTime) {
		this.cTime = cTime;
	}
	
	@Override
	public String toString() {
		return "Payment [pDate=" + pDate + ", cName=" + cName + ", payMile=" + payMile + ", saveMile=" + saveMile
				+ ", totalPrice=" + totalPrice + ", cancelDate=" + cancelDate + ", cDate=" + cDate + ", cStartTime="
				+ cStartTime + ", cEndTime=" + cEndTime + ", cTime=" + cTime + "]";
	}

	
	
	
	
	
}
