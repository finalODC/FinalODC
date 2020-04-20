package com.ohdogcat.odc.manager.Notice.model.vo;

import java.sql.Date;

public class Notice {
	private int nId;
	private String nTitle;
	private String nContent;
	private Date nCreateDate;
	private Date nModifyDate;
	private String nStatus;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int nId, String nTitle, String nContent, Date nCreateDate, Date nModifyDate, String nStatus) {
		super();
		this.nId = nId;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nCreateDate = nCreateDate;
		this.nModifyDate = nModifyDate;
		this.nStatus = nStatus;
	}
	public int getnId() {
		return nId;
	}
	public void setnId(int nId) {
		this.nId = nId;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public Date getnCreateDate() {
		return nCreateDate;
	}
	public void setnCreateDate(Date nCreateDate) {
		this.nCreateDate = nCreateDate;
	}
	public Date getnModifyDate() {
		return nModifyDate;
	}
	public void setnModifyDate(Date nModifyDate) {
		this.nModifyDate = nModifyDate;
	}
	public String getnStatus() {
		return nStatus;
	}
	public void setnStatus(String nStatus) {
		this.nStatus = nStatus;
	}
	@Override
	public String toString() {
		return "Notice [nId=" + nId + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nCreateDate=" + nCreateDate
				+ ", nModifyDate=" + nModifyDate + ", nStatus=" + nStatus + "]";
	}

	
}
