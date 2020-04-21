package com.ohdogcat.odc.hospital.model.vo;

import java.sql.Date;

public class hoReply {
	private int rId;
	private String rContent;
	private int refHid;
	private String parentHrid;
	private String rWriter;
	private Date rCreateDate;
	private Date rModifyDate;
	private String rStatus;
	private int level;
	
	public hoReply() {
		super();
	}

	public hoReply(int rId, String rContent, int refHid, String parentHrid, String rWriter, Date rCreateDate,
			Date rModifyDate, String rStatus, int level) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.refHid = refHid;
		this.parentHrid = parentHrid;
		this.rWriter = rWriter;
		this.rCreateDate = rCreateDate;
		this.rModifyDate = rModifyDate;
		this.rStatus = rStatus;
		this.level = level;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getRefHid() {
		return refHid;
	}

	public void setRefHid(int refHid) {
		this.refHid = refHid;
	}

	public String getParentHrid() {
		return parentHrid;
	}

	public void setParentHrid(String parentHrid) {
		this.parentHrid = parentHrid;
	}

	public String getrWriter() {
		return rWriter;
	}

	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}

	public Date getrCreateDate() {
		return rCreateDate;
	}

	public void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}

	public Date getrModifyDate() {
		return rModifyDate;
	}

	public void setrModifyDate(Date rModifyDate) {
		this.rModifyDate = rModifyDate;
	}

	public String getrStatus() {
		return rStatus;
	}

	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "hoReply [rId=" + rId + ", rContent=" + rContent + ", refHid=" + refHid + ", parentHrid=" + parentHrid
				+ ", rWriter=" + rWriter + ", rCreateDate=" + rCreateDate + ", rModifyDate=" + rModifyDate
				+ ", rStatus=" + rStatus + ", level=" + level + "]";
	}

	


}
