package com.ohdogcat.odc.board.model.vo;

import java.sql.Date;

public class FreeReply {

	private int frId;
	private String rContent;
	private int reffbId;
	private String frWriter;
	private Date frCreateDate;
	private Date frModifyDate;
	private String frStatus;
	
	public FreeReply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FreeReply(int frId, String rContent, int reffbId, String frWriter, Date frCreateDate, Date frModifyDate,
			String frStatus) {
		super();
		this.frId = frId;
		this.rContent = rContent;
		this.reffbId = reffbId;
		this.frWriter = frWriter;
		this.frCreateDate = frCreateDate;
		this.frModifyDate = frModifyDate;
		this.frStatus = frStatus;
	}

	public int getFrId() {
		return frId;
	}

	public void setFrId(int frId) {
		this.frId = frId;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getReffbId() {
		return reffbId;
	}

	public void setReffbId(int reffbId) {
		this.reffbId = reffbId;
	}

	public String getFrWriter() {
		return frWriter;
	}

	public void setFrWriter(String frWriter) {
		this.frWriter = frWriter;
	}

	public Date getFrCreateDate() {
		return frCreateDate;
	}

	public void setFrCreateDate(Date frCreateDate) {
		this.frCreateDate = frCreateDate;
	}

	public Date getFrModifyDate() {
		return frModifyDate;
	}

	public void setFrModifyDate(Date frModifyDate) {
		this.frModifyDate = frModifyDate;
	}

	public String getFrStatus() {
		return frStatus;
	}

	public void setFrStatus(String frStatus) {
		this.frStatus = frStatus;
	}

	@Override
	public String toString() {
		return "FreeReply [frId=" + frId + ", rContent=" + rContent + ", reffbId=" + reffbId + ", frWriter=" + frWriter
				+ ", frCreateDate=" + frCreateDate + ", frModifyDate=" + frModifyDate + ", frStatus=" + frStatus + "]";
	}
	
	
	
}