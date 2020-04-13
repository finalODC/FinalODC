package com.ohdogcat.odc.hospital.model.vo;

public class Doctor {

	private int dId;
	private String refHid;
	private String docName;
	private String docIntro;
	private String docFile;
	private String docStatus;
	
	public Doctor() {
		super();
	}

	public Doctor(int dId, String refHid, String docName, String docIntro, String docFile, String docStatus) {
		super();
		this.dId = dId;
		this.refHid = refHid;
		this.docName = docName;
		this.docIntro = docIntro;
		this.docFile = docFile;
		this.docStatus = docStatus;
	}

	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public String getRefHid() {
		return refHid;
	}

	public void setRefHid(String refHid) {
		this.refHid = refHid;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getDocIntro() {
		return docIntro;
	}

	public void setDocIntro(String docIntro) {
		this.docIntro = docIntro;
	}

	public String getDocFile() {
		return docFile;
	}

	public void setDocFile(String docFile) {
		this.docFile = docFile;
	}

	public String getDocStatus() {
		return docStatus;
	}

	public void setDocStatus(String docStatus) {
		this.docStatus = docStatus;
	}

	@Override
	public String toString() {
		return "Doctor [dId=" + dId + ", refHid=" + refHid + ", docName=" + docName + ", docIntro=" + docIntro
				+ ", docFile=" + docFile + ", docStatus=" + docStatus + "]";
	}

	
	
	
}
