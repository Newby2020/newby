package com.kh.newby.Payment.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Payment implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4292706613464313014L;
	
	private String pno;
	private String pMno;
	private Date pDate;
	private String pCno;
	private String cName;
	private int mileage;
	
	private int payMile;
	private int saveMile;
	
	private String cDate;
	private String cStartTime;
	private String cEndTime;
	private int cTime;
	private int cPrice;
	private String status; //상태
	
	private Date refundDate; //환불 날짜
	private int refundMile;
	
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getpMno() {
		return pMno;
	}
	public void setpMno(String pMno) {
		this.pMno = pMno;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	public String getpCno() {
		return pCno;
	}
	public void setpCno(String pCno) {
		this.pCno = pCno;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getCName() {
		return cName;
	}
	public void setCName(String cName) {
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
	public int getcTime() {
		return cTime;
	}
	public void setcTime(int cTime) {
		this.cTime = cTime;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getRefundDate() {
		return refundDate;
	}
	public void setRefundDate(Date refundDate) {
		this.refundDate = refundDate;
	}
	public int getRefundMile() {
		return refundMile;
	}
	public void setRefundMile(int refundMile) {
		this.refundMile = refundMile;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Payment [pno=" + pno + ", pMno=" + pMno + ", pDate=" + pDate + ", pCno=" + pCno + ", cname=" + cName
				+ ", payMile=" + payMile + ", saveMile=" + saveMile + ", cDate=" + cDate + ", cStartTime=" + cStartTime
				+ ", cEndTime=" + cEndTime + ", cTime=" + cTime + ", cPrice=" + cPrice + ", status=" + status
				+ ", refundDate=" + refundDate + ", refundMile=" + refundMile + "]";
	}
	
	
}
