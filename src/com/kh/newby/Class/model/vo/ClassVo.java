package com.kh.newby.Class.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.Arrays;

public class ClassVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6188151450703153117L;

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
	
	// 기본 생성자
	public ClassVo() {}

	// 클래스 등록용 생성자
	public ClassVo(String className, String firstCategory, String secondCategory, String thirdCategory, String classType,
			int classTime, int classMaxnum, int classPrice, String classImg, String classLocation, String classTarget,
			String classCurriculum, String classIntro, String classDate, String classStartTime, String classEndTime, String hostNo) {
		super();
		this.className = className;
		this.firstCategory = firstCategory;
		this.secondCategory = secondCategory;
		this.thirdCategory = thirdCategory;
		this.classType = classType;
		this.classMaxnum = classMaxnum;
		this.classTime = classTime;
		this.classPrice = classPrice;
		this.classImg = classImg;
		this.classLocation = classLocation;
		this.classIntro = classIntro;
		this.classTarget = classTarget;
		this.classCurriculum = classCurriculum;
		this.classDate = classDate;
		this.classStartTime = classStartTime;
		this.classEndTime = classEndTime;
		this.hostNo = hostNo;
	}
	
	// 클래스 상세 페이지 생성자(enrolldate 제외하고 모두)
	public ClassVo(String classNo, String classHostNo, String className, String firstCategory, String secondCategory,
			String thirdCategory, String classType, int classMaxnum, int classTime, int classPrice, String classImg,
			String classLocation, String classIntro, String classTarget, String classCurriculum, String classDate,
			String classStartTime, String classEndTime, String hostName, String hostIntro, double averageReview) {
		super();
		this.classNo = classNo;
		this.classHostNo = classHostNo;
		this.className = className;
		this.firstCategory = firstCategory;
		this.secondCategory = secondCategory;
		this.thirdCategory = thirdCategory;
		this.classType = classType;
		this.classMaxnum = classMaxnum;
		this.classTime = classTime;
		this.classPrice = classPrice;
		this.classImg = classImg;
		this.classLocation = classLocation;
		this.classIntro = classIntro;
		this.classTarget = classTarget;
		this.classCurriculum = classCurriculum;
		this.classDate = classDate;
		this.classStartTime = classStartTime;
		this.classEndTime = classEndTime;
		this.hostName = hostName;
		this.hostIntro = hostIntro;
		this.averageReview = averageReview;
	}
	
	// 관리자용 클래스 관리 생성자
	public ClassVo(String classNo, String className, String firstCategory, String classType, int classMaxnum,
			int classPrice, String classLocation, Date classEnrollDate, String classStartTime, String classEndTime,
			String hostName, String hostNo, String classStatus, String rejectReason) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.firstCategory = firstCategory;
		this.classType = classType;
		this.classMaxnum = classMaxnum;
		this.classPrice = classPrice;
		this.classLocation = classLocation;
		this.classEnrollDate = classEnrollDate;
		this.classStartTime = classStartTime;
		this.classEndTime = classEndTime;
		this.hostName = hostName;
		this.hostNo = hostNo;
		this.classStatus = classStatus;
		this.rejectReason = rejectReason;
	}
	// 관리자용 클래스 관리 생성자 종료
	public ClassVo(String classNo, String classHostNo, String className, String classIntro, Date classEnrollDate, String classStatus, String rejectReason, String caNo) {
		super();
		this.classNo = classNo;
		this.classHostNo = classHostNo;
		this.className = className;
		this.classIntro = classIntro;
		this.classEnrollDate = classEnrollDate;
		this.classStatus = classStatus;
		this.rejectReason = rejectReason;
		this.caNo = caNo;
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
	
	// 관리자용 클래스 생성 
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
	// 관리자용 클래스 생성 종료

	@Override
	public String toString() {
		return "ClassVo [classNo=" + classNo + ", classHostNo=" + classHostNo + ", className=" + className
				+ ", firstCategory=" + firstCategory + ", secondCategory=" + secondCategory + ", thirdCategory="
				+ thirdCategory + ", classType=" + classType + ", classMaxnum=" + classMaxnum + ", classTime="
				+ classTime + ", classPrice=" + classPrice + ", classImg=" + classImg + ", classLocation="
				+ classLocation + ", classIntro=" + classIntro + ", classTarget=" + classTarget + ", classCurriculum="
				+ classCurriculum + ", classEnrollDate=" + classEnrollDate + ", classDate=" + classDate
				+ ", classStartTime=" + classStartTime + ", classEndTime=" + classEndTime + ", hostName=" + hostName
				+ ", hostIntro=" + hostIntro + ", averageReview=" + averageReview + ", hostNo=" + hostNo
				+ ", classStatus=" + classStatus + ", rejectReason=" + rejectReason + "]";
	}

}
