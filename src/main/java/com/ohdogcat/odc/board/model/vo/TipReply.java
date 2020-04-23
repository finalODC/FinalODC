package com.ohdogcat.odc.board.model.vo;

import java.sql.Date;

public class TipReply {

	private int trId;
	private String trContent;
	private int trreftbId;
	private String trWriter;
	private Date trCreateDate;
	private Date trModifyDate;
	private String trStatus;
	
	public TipReply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TipReply(int trId, String trContent, int trreftbId, String trWriter, Date trCreateDate, Date trModifyDate,
			String trStatus) {
		super();
		this.trId = trId;
		this.trContent = trContent;
		this.trreftbId = trreftbId;
		this.trWriter = trWriter;
		this.trCreateDate = trCreateDate;
		this.trModifyDate = trModifyDate;
		this.trStatus = trStatus;
	}

	public int getTrId() {
		return trId;
	}

	public void setTrId(int trId) {
		this.trId = trId;
	}

	public String getTrContent() {
		return trContent;
	}

	public void setTrContent(String trContent) {
		this.trContent = trContent;
	}

	public int getTrreftbId() {
		return trreftbId;
	}

	public void setTrreftbId(int trreftbId) {
		this.trreftbId = trreftbId;
	}

	public String getTrWriter() {
		return trWriter;
	}

	public void setTrWriter(String trWriter) {
		this.trWriter = trWriter;
	}

	public Date getTrCreateDate() {
		return trCreateDate;
	}

	public void setTrCreateDate(Date trCreateDate) {
		this.trCreateDate = trCreateDate;
	}

	public Date getTrModifyDate() {
		return trModifyDate;
	}

	public void setTrModifyDate(Date trModifyDate) {
		this.trModifyDate = trModifyDate;
	}

	public String getTrStatus() {
		return trStatus;
	}

	public void setTrStatus(String trStatus) {
		this.trStatus = trStatus;
	}

	@Override
	public String toString() {
		return "TipReply [trId=" + trId + ", trContent=" + trContent + ", trreftbId=" + trreftbId + ", trWriter="
				+ trWriter + ", trCreateDate=" + trCreateDate + ", trModifyDate=" + trModifyDate + ", trStatus="
				+ trStatus + "]";
	}
	
	
	
}
