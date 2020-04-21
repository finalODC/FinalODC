package com.ohdogcat.odc.board.model.vo;

import java.sql.Date;

public class TipBoard {
	
	private int tbId;
	private String tbTitle;
	private String tbWriter;
	private String tbContent;
	private int tbCount;
	private Date tbCreateDate;
	private Date tbModifyDate;
	private String tbType;
	private String tbCategory;
	private String tbStatus;
	private int tbComplain;
	
	
	public TipBoard() {
		super();
		// TODO Auto-generated constructor stub
	}


	public TipBoard(int tbId, String tbTitle, String tbWriter, String tbContent, int tbCount, Date tbCreateDate,
			Date tbModifyDate, String tbType, String tbCategory, String tbStatus, int tbComplain) {
		super();
		this.tbId = tbId;
		this.tbTitle = tbTitle;
		this.tbWriter = tbWriter;
		this.tbContent = tbContent;
		this.tbCount = tbCount;
		this.tbCreateDate = tbCreateDate;
		this.tbModifyDate = tbModifyDate;
		this.tbType = tbType;
		this.tbCategory = tbCategory;
		this.tbStatus = tbStatus;
		this.tbComplain = tbComplain;
	}


	public int getTbId() {
		return tbId;
	}


	public void setTbId(int tbId) {
		this.tbId = tbId;
	}


	public String getTbTitle() {
		return tbTitle;
	}


	public void setTbTitle(String tbTitle) {
		this.tbTitle = tbTitle;
	}


	public String getTbWriter() {
		return tbWriter;
	}


	public void setTbWriter(String tbWriter) {
		this.tbWriter = tbWriter;
	}


	public String getTbContent() {
		return tbContent;
	}


	public void setTbContent(String tbContent) {
		this.tbContent = tbContent;
	}


	public int getTbCount() {
		return tbCount;
	}


	public void setTbCount(int tbCount) {
		this.tbCount = tbCount;
	}


	public Date gettbCreateDate() {
		return tbCreateDate;
	}


	public void settbCreateDate(Date tbCreateDate) {
		this.tbCreateDate = tbCreateDate;
	}


	public Date getTbModifyDate() {
		return tbModifyDate;
	}


	public void setTbModifyDate(Date tbModifyDate) {
		this.tbModifyDate = tbModifyDate;
	}


	public String getTbType() {
		return tbType;
	}


	public void setTbType(String tbType) {
		this.tbType = tbType;
	}


	public String getTbCategory() {
		return tbCategory;
	}


	public void setTbCategory(String tbCategory) {
		this.tbCategory = tbCategory;
	}


	public String getTbStatus() {
		return tbStatus;
	}


	public void setTbStatus(String tbStatus) {
		this.tbStatus = tbStatus;
	}


	public int getTbComplain() {
		return tbComplain;
	}


	public void setTbComplain(int tbComplain) {
		this.tbComplain = tbComplain;
	}


	@Override
	public String toString() {
		return "TipBoard [tbId=" + tbId + ", tbTitle=" + tbTitle + ", tbWriter=" + tbWriter + ", tbContent=" + tbContent
				+ ", tbCount=" + tbCount + ", tbCreateDate=" + tbCreateDate + ", tbModifyDate=" + tbModifyDate
				+ ", tbType=" + tbType + ", tbCategory=" + tbCategory + ", tbStatus=" + tbStatus + ", tbComplain="
				+ tbComplain + "]";
	}
	
	
	
	
	
	
	
	
}
