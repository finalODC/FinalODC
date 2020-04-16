package com.ohdogcat.odc.homepage.searchHospital.model.vo;

public class hospitalSearchCondition {
	private String sName;
	private String sArea;
	public hospitalSearchCondition() {
		super();
		// TODO Auto-generated constructor stub
	}
	public hospitalSearchCondition(String sName, String sArea) {
		super();
		this.sName = sName;
		this.sArea = sArea;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsArea() {
		return sArea;
	}
	public void setsArea(String sArea) {
		this.sArea = sArea;
	}
	@Override
	public String toString() {
		return "hospitalSearchCondition [sName=" + sName + ", sArea=" + sArea + "]";
	}

	
	
	
	

}
