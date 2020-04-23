package com.ohdogcat.odc.hospital.model.vo;

import java.sql.Date;

public class Diagnosis {
	
	private int dId;        //진단서 번호
	private String dWriter; //작성자
	private String pCode;	//반려견등록번호
	private int hId;		//병원등록번호
	private String hName;
	private int docId;		//의사등록번호
	private Date dDate;		//작성일
	private String dContent;//진단내용
	private String dUnique;	//특이사항
	private String dStatus;	//진단서 상태
	private String dMedicine; //처방약
	
	public Diagnosis() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Diagnosis(int dId, String dWriter, String pCode, int hId, String hName, int docId, Date dDate,
			String dContent, String dUnique, String dStatus, String dMedicine) {
		super();
		this.dId = dId;
		this.dWriter = dWriter;
		this.pCode = pCode;
		this.hId = hId;
		this.hName = hName;
		this.docId = docId;
		this.dDate = dDate;
		this.dContent = dContent;
		this.dUnique = dUnique;
		this.dStatus = dStatus;
		this.dMedicine = dMedicine;
	}



	public String gethName() {
		return hName;
	}

	public void sethName(String hName) {
		this.hName = hName;
	}

	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public String getdWriter() {
		return dWriter;
	}

	public void setdWriter(String dWriter) {
		this.dWriter = dWriter;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public int gethId() {
		return hId;
	}

	public void sethId(int hId) {
		this.hId = hId;
	}

	public int getDocId() {
		return docId;
	}

	public void setDocId(int docId) {
		this.docId = docId;
	}

	public Date getdDate() {
		return dDate;
	}

	public void setdDate(Date dDate) {
		this.dDate = dDate;
	}

	public String getdContent() {
		return dContent;
	}

	public void setdContent(String dContent) {
		this.dContent = dContent;
	}

	public String getdUnique() {
		return dUnique;
	}

	public void setdUnique(String dUnique) {
		this.dUnique = dUnique;
	}

	public String getdStatus() {
		return dStatus;
	}

	public void setdStatus(String dStatus) {
		this.dStatus = dStatus;
	}

	public String getdMedicine() {
		return dMedicine;
	}


	public void setdMedicine(String dMedicine) {
		this.dMedicine = dMedicine;
	}

	@Override
	public String toString() {
		return "Diagnosis [dId=" + dId + ", dWriter=" + dWriter + ", pCode=" + pCode + ", hId=" + hId + ", hName="
				+ hName + ", docId=" + docId + ", dDate=" + dDate + ", dContent=" + dContent + ", dUnique=" + dUnique
				+ ", dStatus=" + dStatus + ", dMedicine=" + dMedicine + ", gethName()=" + gethName() + ", getdId()="
				+ getdId() + ", getdWriter()=" + getdWriter() + ", getpCode()=" + getpCode() + ", gethId()=" + gethId()
				+ ", getDocId()=" + getDocId() + ", getdDate()=" + getdDate() + ", getdContent()=" + getdContent()
				+ ", getdUnique()=" + getdUnique() + ", getdStatus()=" + getdStatus() + ", getdMedicine()="
				+ getdMedicine() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}


	




	


	
	}
	
	
	
	
	


