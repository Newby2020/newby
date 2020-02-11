package com.kh.newby.Class.model.vo;

import java.io.Serializable;
import java.sql.Date;

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
	private int classTime;
	private int classPrice;
	private int classMaxnum;
	private String classImg;
	private String classLocation;
	private String classIntro;
	private String classTarget;
	private String classCurriculum;	
	private Date classEnrollDate;
	private Date classStartDate;
	private Date classEndDate;
	private String hostName;
	private String hostIntro;
	private int averageReview;
	
	// 기본 생성자
	public ClassVo() {}

	// 클래스 등록용 생성자
	public ClassVo(String className, String firstCategory, String secondCategory, String thirdCategory, String classType,
			int classTime, int classPrice, int classMaxnum, String classImg, String classLocation, String classIntro,
			String classTarget, String classCurriculum, Date classStartDate, Date classEndDate) {
		super();
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
		this.classStartDate = classStartDate;
		this.classEndDate = classEndDate;
	}
	
	// 클래스 상세 페이지 생성자(enrolldate 제외하고 모두)
	public ClassVo(String classNo, String classHostNo, String className, String firstCategory, String secondCategory,
			String thirdCategory, String classType, int classTime, int classPrice, int classMaxnum, String classImg,
			String classLocation, String classIntro, String classTarget, String classCurriculum, Date classStartDate,
			Date classEndDate, String hostName, String hostIntro, int averageReview) {
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
		this.classStartDate = classStartDate;
		this.classEndDate = classEndDate;
		this.hostName = hostName;
		this.hostIntro = hostIntro;
		this.averageReview = averageReview;
	}
	// 클래스 전체 정보 출력 생성자

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

	public Date getClassStartDate() {
		return classStartDate;
	}

	public void setClassStartDate(Date classStartDate) {
		this.classStartDate = classStartDate;
	}

	public Date getClassEndDate() {
		return classEndDate;
	}

	public void setClassEndDate(Date classEndDate) {
		this.classEndDate = classEndDate;
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

	public int getAverageReview() {
		return averageReview;
	}

	public void setAverageReview(int averageReview) {
		this.averageReview = averageReview;
	}

	@Override
	public String toString() {
		return "Class [classNo=" + classNo + ", classHostNo=" + classHostNo + ", className=" + className
				+ ", firstCategory=" + firstCategory + ", secondCategory=" + secondCategory + ", thirdCategory="
				+ thirdCategory + ", classType=" + classType + ", classTime=" + classTime + ", classPrice=" + classPrice
				+ ", classMaxnum=" + classMaxnum + ", classImg=" + classImg + ", classLocation=" + classLocation
				+ ", classIntro=" + classIntro + ", classTarget=" + classTarget + ", classCurriculum=" + classCurriculum
				+ ", classEnrollDate=" + classEnrollDate + ", classStartDate=" + classStartDate + ", classEndDate="
				+ classEndDate + ", hostName=" + hostName + ", hostIntro=" + hostIntro + ", averageReview="
				+ averageReview + "]";
	}
	
	
	
	

	

		
}
