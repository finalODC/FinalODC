package com.ohdogcat.odc.qna.model.vo;

import java.sql.Date;

public class Qna {
	private int qId;
	private String qWriter;
	private String qCategory;
	private String qTitle;
	private String qContent;
	private String qFile;
	private Date qDate;
	private char qStatus;
	public Qna(int qId, String qWriter, String qCategory, String qTitle, String qContent, String qFile, Date qDate,
			char qStatus) {
		super();
		this.qId = qId;
		this.qWriter = qWriter;
		this.qCategory = qCategory;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qFile = qFile;
		this.qDate = qDate;
		this.qStatus = qStatus;
	}
	public Qna() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Qna [qId=" + qId + ", qWriter=" + qWriter + ", qCategory=" + qCategory + ", qTitle=" + qTitle
				+ ", qContent=" + qContent + ", qFile=" + qFile + ", qDate=" + qDate + ", qStatus=" + qStatus + "]";
	}
	public int getqId() {
		return qId;
	}
	public void setqId(int qId) {
		this.qId = qId;
	}
	public String getqWriter() {
		return qWriter;
	}
	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}
	public String getqCategory() {
		return qCategory;
	}
	public void setqCategory(String qCategory) {
		this.qCategory = qCategory;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public String getqFile() {
		return qFile;
	}
	public void setqFile(String qFile) {
		this.qFile = qFile;
	}
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}
	public char getqStatus() {
		return qStatus;
	}
	public void setqStatus(char qStatus) {
		this.qStatus = qStatus;
	}
	
	
	
}
