package com.kh.newby.Class.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Class implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6188151450703153117L;

	private String c_no;
	private String c_host_no;
	private String c_name;
	private String first_category;
	private String second_category;
	private String third_category;
	private String c_type;
	private int c_time;
	private int c_price;
	private int c_maxNum;
	private String c_img;
	private String c_location;
	private String c_intro;
	private String c_target;
	private String c_curriculum;	
	private Date c_enrollDate;
	private Date c_startDate;
	private Date c_endDate;
	
	public Class() {}

	// 클래스 등록용 생성자
	public Class(String c_host_no, String c_name, String first_category, String second_category, String third_category,
			String c_type, int c_time, int c_price, int c_maxNum, String c_img, String c_location, String c_intro,
			String c_target, String c_curriculum, Date c_startDate, Date c_endDate) {
		super();
		this.c_host_no = c_host_no;
		this.c_name = c_name;
		this.first_category = first_category;
		this.second_category = second_category;
		this.third_category = third_category;
		this.c_type = c_type;
		this.c_time = c_time;
		this.c_price = c_price;
		this.c_maxNum = c_maxNum;
		this.c_img = c_img;
		this.c_location = c_location;
		this.c_intro = c_intro;
		this.c_target = c_target;
		this.c_curriculum = c_curriculum;
		this.c_startDate = c_startDate;
		this.c_endDate = c_endDate;
	}

	// 클래스 전체 정보 출력 생성자
	public Class(String c_no, String c_host_no, String c_name, String first_category, String second_category,
			String third_category, String c_type, int c_time, int c_price, int c_maxNum, String c_img,
			String c_location, String c_intro, String c_target, String c_curriculum, Date c_enrollDate,
			Date c_startDate, Date c_endDate) {
		super();
		this.c_no = c_no;
		this.c_host_no = c_host_no;
		this.c_name = c_name;
		this.first_category = first_category;
		this.second_category = second_category;
		this.third_category = third_category;
		this.c_type = c_type;
		this.c_time = c_time;
		this.c_price = c_price;
		this.c_maxNum = c_maxNum;
		this.c_img = c_img;
		this.c_location = c_location;
		this.c_intro = c_intro;
		this.c_target = c_target;
		this.c_curriculum = c_curriculum;
		this.c_enrollDate = c_enrollDate;
		this.c_startDate = c_startDate;
		this.c_endDate = c_endDate;
	}

	public String getC_no() {
		return c_no;
	}

	public void setC_no(String c_no) {
		this.c_no = c_no;
	}

	public String getC_host_no() {
		return c_host_no;
	}

	public void setC_host_no(String c_host_no) {
		this.c_host_no = c_host_no;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getFirst_category() {
		return first_category;
	}

	public void setFirst_category(String first_category) {
		this.first_category = first_category;
	}

	public String getSecond_category() {
		return second_category;
	}

	public void setSecond_category(String second_category) {
		this.second_category = second_category;
	}

	public String getThird_category() {
		return third_category;
	}

	public void setThird_category(String third_category) {
		this.third_category = third_category;
	}

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public int getC_time() {
		return c_time;
	}

	public void setC_time(int c_time) {
		this.c_time = c_time;
	}

	public int getC_price() {
		return c_price;
	}

	public void setC_price(int c_price) {
		this.c_price = c_price;
	}

	public int getC_maxNum() {
		return c_maxNum;
	}

	public void setC_maxNum(int c_maxNum) {
		this.c_maxNum = c_maxNum;
	}

	public String getC_img() {
		return c_img;
	}

	public void setC_img(String c_img) {
		this.c_img = c_img;
	}

	public String getC_location() {
		return c_location;
	}

	public void setC_location(String c_location) {
		this.c_location = c_location;
	}

	public String getC_intro() {
		return c_intro;
	}

	public void setC_intro(String c_intro) {
		this.c_intro = c_intro;
	}

	public String getC_target() {
		return c_target;
	}

	public void setC_target(String c_target) {
		this.c_target = c_target;
	}

	public String getC_curriculum() {
		return c_curriculum;
	}

	public void setC_curriculum(String c_curriculum) {
		this.c_curriculum = c_curriculum;
	}

	public Date getC_enrollDate() {
		return c_enrollDate;
	}

	public void setC_enrollDate(Date c_enrollDate) {
		this.c_enrollDate = c_enrollDate;
	}

	public Date getC_startDate() {
		return c_startDate;
	}

	public void setC_startDate(Date c_startDate) {
		this.c_startDate = c_startDate;
	}

	public Date getC_endDate() {
		return c_endDate;
	}

	public void setC_endDate(Date c_endDate) {
		this.c_endDate = c_endDate;
	}
	
	
	@Override
	public String toString() {
		return "Class [c_no=" + c_no + ", c_host_no=" + c_host_no + ", c_name=" + c_name + ", first_category="
				+ first_category + ", second_category=" + second_category + ", third_category=" + third_category
				+ ", c_type=" + c_type + ", c_time=" + c_time + ", c_price=" + c_price + ", c_maxNum=" + c_maxNum
				+ ", c_img=" + c_img + ", c_location=" + c_location + ", c_intro=" + c_intro + ", c_target=" + c_target
				+ ", c_curriculum=" + c_curriculum + ", c_enrollDate=" + c_enrollDate + ", c_startDate=" + c_startDate
				+ ", c_endDate=" + c_endDate + "]";
	}
	
	
	
	
	
}
