package com.kh.newby.category.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class categoryVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6021114391740281523L;
	
	private String classNo;
	private String classHostNo;
	private String className;
	private String firstCategory;
	private String secondCategory;
	private String thirdCategory;
	private String classType;
	private int classTime;
	private int classPrice;
	private int classMaxnum;
	private String classImg;
	private String classLocation;
	private String classIntro;
	private String classTarget;
	private String classCurriculum;	
	private Date classEnrollDate;
	private String classDate;
	private int classStartTime;
	private int classEndTime;
	private String hostName;
	private String hostIntro;
	private double averageReview;
	
	
	// 카테고리 기본생성자
	public categoryVo() {}

	// 카테고리 전체 생성자 

	public categoryVo(String classNo, String classHostNo, String className, String firstCategory, String secondCategory,
			String thirdCategory, String classType, int classTime, int classPrice, int classMaxnum, String classImg,
			String classLocation, String classIntro, String classTarget, String classCurriculum, Date classEnrollDate,
			String classDate, int classStartTime, int classEndTime, String hostName, String hostIntro,
			double averageReview) {
		super();
		this.classNo = classNo;
		this.classHostNo = classHostNo;
		this.className = className;
		this.firstCategory = firstCategory;
		this.secondCategory = secondCategory;
		this.thirdCategory = thirdCategory;
		this.classType = classType;
		this.classTime = classTime;
		this.classPrice = classPrice;
		this.classMaxnum = classMaxnum;
		this.classImg = classImg;
		this.classLocation = classLocation;
		this.classIntro = classIntro;
		this.classTarget = classTarget;
		this.classCurriculum = classCurriculum;
		this.classEnrollDate = classEnrollDate;
		this.classDate = classDate;
		this.classStartTime = classStartTime;
		this.classEndTime = classEndTime;
		this.hostName = hostName;
		this.hostIntro = hostIntro;
		this.averageReview = averageReview;
	}
	
	
	// 카테고리 생성자
	
	public categoryVo(String classNo, String className, String firstCategory, String secondCategory, String thirdCategory, int classPrice, String classImg,
			String classLocation, double averageReview) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.firstCategory = firstCategory;
		this.secondCategory = secondCategory;
		this.thirdCategory = thirdCategory;
		this.classPrice = classPrice;
		this.classImg = classImg;
		this.classLocation = classLocation;
		this.averageReview = averageReview;
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

	public int getClassMaxnum() {
		return classMaxnum;
	}

	public void setClassMaxnum(int classMaxnum) {
		this.classMaxnum = classMaxnum;
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

	public int getClassStartTime() {
		return classStartTime;
	}

	public void setClassStartTime(int classStartTime) {
		this.classStartTime = classStartTime;
	}

	public int getClassEndTime() {
		return classEndTime;
	}

	public void setClassEndTime(int classEndTime) {
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

	@Override
	public String toString() {
		return "categoryVo [classNo=" + classNo + ", className=" + className
				+ ", firstCategory=" + firstCategory + ", secondCategory=" + secondCategory + ", thirdCategory="
				+ thirdCategory + ", classType=" + classType + ", classTime=" + classTime + ", classPrice=" + classPrice
				+ ", classMaxnum=" + classMaxnum + ", classImg=" + classImg + ", classLocation=" + classLocation
				+ ", classIntro=" + classIntro + ", classTarget=" + classTarget + ", classCurriculum=" + classCurriculum
				+ ", classEnrollDate=" + classEnrollDate + ", classDate=" + classDate + ", classStartTime="
				+ classStartTime + ", classEndTime=" + classEndTime + ", hostName=" + hostName + ", hostIntro="
				+ hostIntro + ", averageReview=" + averageReview + "]";
	}
	
	

	
	
	
	 

}
