package com.kh.newby.category.model.vo;

public class filterVo {

	private String fLoca;
	private String fCate;
	private String fType;
	private String fDay;
	private String amount;
	private String keword;
	
	public filterVo() {
		super();
	}

	public filterVo(String fLoca, String fCate, String fType, String fDay, String amount, String keword) {
		super();
		this.fLoca = fLoca;
		this.fCate = fCate;
		this.fType = fType;
		this.fDay = fDay;
		this.amount = amount;
		this.keword = keword;
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

	public String getKeword() {
		return keword;
	}

	public void setKeword(String keword) {
		this.keword = keword;
	}

	@Override
	public String toString() {
		return "Filter [fLoca=" + fLoca + ", fCate=" + fCate + ", fType=" + fType + ", fDay=" + fDay + ", amount="
				+ amount + ", keword=" + keword + "]";
	}
	
	
	
	
	
}