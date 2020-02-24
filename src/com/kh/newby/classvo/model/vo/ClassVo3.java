package com.kh.newby.classvo.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.Arrays;

public class ClassVo3 implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8297952635101326350L;

	private String classNo;
	private String classHostNo;
	private String className;
	private String firstCategory;
	private String secondCategory;
	private String thirdCategory;
	private String classType;
	private int classMaxnum;
	private int classTime;
	private int classPrice;
	private String classImg;
	private String classLocation;
	private String classIntro;
	private String classTarget;
	private String classCurriculum;	
	private Date classEnrollDate;
	private String classDate;
	private String classStartTime;
	private String classEndTime;
	private String hostName;
	private String hostIntro;
	private double averageReview;
	private String hostNo;
	private String classStatus;
	private String rejectReason;
	private String caNo;
	private int payMileage;
	private int paySaveMileage;
	private int cancelClassCount;
	private String mNo;
	private String csNo;
	
	// 기본 생성자
	public ClassVo3() {}
	
	// 결제 시 필요
	
	
	// 결제 및 결제 취소 시 필요
	public ClassVo3(String className, String firstCategory, String secondCategory, String thirdCategory, int classPrice,
			String classImg, String classDate, String classStartTime, String classEndTime, int payMileage,
			int paySaveMileage) {
		super();
		this.className = className;
		this.firstCategory = firstCategory;
		this.secondCategory = secondCategory;
		this.thirdCategory = thirdCategory;
		this.classPrice = classPrice;
		this.classImg = classImg;
		this.classDate = classDate;
		this.classStartTime = classStartTime;
		this.classEndTime = classEndTime;
		this.payMileage = payMileage;
		this.paySaveMileage = paySaveMileage;
		this.cancelClassCount = cancelClassCount;
	}
	// 결제완료시 디비로 보내줘야될 생성자 - 재우
	public ClassVo3(String classNo, int payMileage, int paySaveMileage, String mNo, String csNo) {
		super();
		this.classNo = classNo;
		this.payMileage = payMileage;
		this.paySaveMileage = paySaveMileage;
		this.mNo = mNo;
		this.csNo = csNo;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public String getClassHostNo() {
		return classHostNo;
	}

	public void setClassHostNo(String classHostNo) {
		this.classHostNo = classHostNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getFirstCategory() {
		return firstCategory;
	}

	public void setFirstCategory(String firstCategory) {
		this.firstCategory = firstCategory;
	}

	public String getSecondCategory() {
		return secondCategory;
	}

	public void setSecondCategory(String secondCategory) {
		this.secondCategory = secondCategory;
	}

	public String getThirdCategory() {
		return thirdCategory;
	}

	public void setThirdCategory(String thirdCategory) {
		this.thirdCategory = thirdCategory;
	}

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public int getClassMaxnum() {
		return classMaxnum;
	}

	public void setClassMaxnum(int classMaxnum) {
		this.classMaxnum = classMaxnum;
	}

	public int getClassTime() {
		return classTime;
	}

	public void setClassTime(int classTime) {
		this.classTime = classTime;
	}

	public int getClassPrice() {
		return classPrice;
	}

	public void setClassPrice(int classPrice) {
		this.classPrice = classPrice;
	}

	public String getClassImg() {
		return classImg;
	}

	public void setClassImg(String classImg) {
		this.classImg = classImg;
	}

	public String getClassLocation() {
		return classLocation;
	}

	public void setClassLocation(String classLocation) {
		this.classLocation = classLocation;
	}

	public String getClassIntro() {
		return classIntro;
	}

	public void setClassIntro(String classIntro) {
		this.classIntro = classIntro;
	}

	public String getClassTarget() {
		return classTarget;
	}

	public void setClassTarget(String classTarget) {
		this.classTarget = classTarget;
	}

	public String getClassCurriculum() {
		return classCurriculum;
	}

	public void setClassCurriculum(String classCurriculum) {
		this.classCurriculum = classCurriculum;
	}

	public Date getClassEnrollDate() {
		return classEnrollDate;
	}

	public void setClassEnrollDate(Date classEnrollDate) {
		this.classEnrollDate = classEnrollDate;
	}

	public String getClassDate() {
		return classDate;
	}

	public void setClassDate(String classDate) {
		this.classDate = classDate;
	}

	public String getClassStartTime() {
		return classStartTime;
	}

	public void setClassStartTime(String classStartTime) {
		this.classStartTime = classStartTime;
	}

	public String getClassEndTime() {
		return classEndTime;
	}

	public void setClassEndTime(String classEndTime) {
		this.classEndTime = classEndTime;
	}

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public String getHostIntro() {
		return hostIntro;
	}

	public void setHostIntro(String hostIntro) {
		this.hostIntro = hostIntro;
	}

	public double getAverageReview() {
		return averageReview;
	}

	public void setAverageReview(double averageReview) {
		this.averageReview = averageReview;
	}

	public String getHostNo() {
		return hostNo;
	}

	public void setHostNo(String hostNo) {
		this.hostNo = hostNo;
	}

	public String getClassStatus() {
		return classStatus;
	}

	public void setClassStatus(String classStatus) {
		this.classStatus = classStatus;
	}

	public String getRejectReason() {
		return rejectReason;
	}

	public void setRejectReason(String rejectReason) {
		this.rejectReason = rejectReason;
	}

	public String getCaNo() {
		return caNo;
	}

	public void setCaNo(String caNo) {
		this.caNo = caNo;
	}

	public int getPayMileage() {
		return payMileage;
	}

	public void setPayMileage(int payMileage) {
		this.payMileage = payMileage;
	}

	public int getPaySaveMileage() {
		return paySaveMileage;
	}

	public void setPaySaveMileage(int paySaveMileage) {
		this.paySaveMileage = paySaveMileage;
	}
	
	
	public int getCancelClassCount() {
		return cancelClassCount;
	}

	public void setCancelClassCount(int cancelClassCount) {
		this.cancelClassCount = cancelClassCount;
	}

	public String getmNo() {
		return mNo;
	}

	public void setmNo(String mNo) {
		this.mNo = mNo;
	}

	public String getCsNo() {
		return csNo;
	}

	public void setCsNo(String csNo) {
		this.csNo = csNo;
	}

	@Override
	public String toString() {
		return "ClassVo3 [classNo=" + classNo + ", classHostNo=" + classHostNo + ", className=" + className
				+ ", firstCategory=" + firstCategory + ", secondCategory=" + secondCategory + ", thirdCategory="
				+ thirdCategory + ", classType=" + classType + ", classMaxnum=" + classMaxnum + ", classTime="
				+ classTime + ", classPrice=" + classPrice + ", classImg=" + classImg + ", classLocation="
				+ classLocation + ", classIntro=" + classIntro + ", classTarget=" + classTarget + ", classCurriculum="
				+ classCurriculum + ", classEnrollDate=" + classEnrollDate + ", classDate=" + classDate
				+ ", classStartTime=" + classStartTime + ", classEndTime=" + classEndTime + ", hostName=" + hostName
				+ ", hostIntro=" + hostIntro + ", averageReview=" + averageReview + ", hostNo=" + hostNo
				+ ", classStatus=" + classStatus + ", rejectReason=" + rejectReason + ", caNo=" + caNo + ", payMileage="
				+ payMileage + ", paySaveMileage=" + paySaveMileage + ", cancelClassCount=" + cancelClassCount + "]";
	}

}