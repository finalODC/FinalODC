package com.ohdogcat.odc.qna.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class QnaReply {
	private int refQid;
	private Date aDate;
	private String aContent;
	private String aStatus;
	public QnaReply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnaReply(Date aDate, String aContent) {
		super();
		this.aDate = aDate;
		this.aContent = aContent;
	}
	public QnaReply(int refQid, Date aDate, String aContent, String aStatus) {
		super();
		this.refQid = refQid;
		this.aDate = aDate;
		this.aContent = aContent;
		this.aStatus = aStatus;
	}
	public int getRefQid() {
		return refQid;
	}
	public void setRefQid(int refQid) {
		this.refQid = refQid;
	}
	public Date getaDate() {
		return aDate;
	}
	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}
	public String getaContent() {
		return aContent;
	}
	public void setaContent(String aContent) {
		this.aContent = aContent;
	}
	public String getaStatus() {
		return aStatus;
	}
	public void setaStatus(String aStatus) {
		this.aStatus = aStatus;
	}
	@Override
	public String toString() {
		return "QnaReply [refQid=" + refQid + ", aDate=" + aDate + ", aContent=" + aContent + ", aStatus=" + aStatus
				+ "]";
	}
	
	
}
