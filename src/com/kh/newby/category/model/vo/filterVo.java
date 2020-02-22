package com.kh.newby.category.model.vo;

public class filterVo {

	private String fLoca;
	private String fCate;
	private String fType;
	private String fDay;
	private String amount;
	private String caType;
	private String fSort;
	
	public filterVo() {
		super();
	}

	public filterVo(String fLoca, String fCate, String fType, String fDay, String amount, String caType, String fSort) {
		super();
		this.fLoca = fLoca;
		this.fCate = fCate;
		this.fType = fType;
		this.fDay = fDay;
		this.amount = amount;
		this.caType = caType;
		this.fSort = fSort;
	}

	public String getfLoca() {
		return fLoca;
	}

	public void setfLoca(String fLoca) {
		this.fLoca = fLoca;
	}

	public String getfCate() {
		return fCate;
	}

	public void setfCate(String fCate) {
		this.fCate = fCate;
	}

	public String getfType() {
		return fType;
	}

	public void setfType(String fType) {
		this.fType = fType;
	}

	public String getfDay() {
		return fDay;
	}

	public void setfDay(String fDay) {
		this.fDay = fDay;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getCaType() {
		return caType;
	}

	public void setCaType(String caType) {
		this.caType = caType;
	}

	public String getfSort() {
		return fSort;
	}
	
	public void setfSort(String fSort) {
		this.fSort = fSort;
	}

	@Override
	public String toString() {
		return "filterVo [fLoca=" + fLoca + ", fCate=" + fCate + ", fType=" + fType + ", fDay=" + fDay + ", amount="
				+ amount + ", caType=" + caType + ", fSort=" + fSort + "]";
	}

	
	
	
}
