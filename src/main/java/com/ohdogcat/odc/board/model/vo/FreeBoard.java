package com.ohdogcat.odc.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class FreeBoard {

	
	private String fbId;
	private String fbTitle;
	private String fbWriter;
	private String fbContent;
	private int fbCount;
	private Date fbCreatedate;
	private Date fbModifydate;
	private String fbType;
	private String fbStatus;
	private String Category;
	private int Complain;
	
	public FreeBoard() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FreeBoard(String fbId, String fbTitle, String fbWriter, String fbContent, int fbCount, Date fbCreatedate,
			Date fbModifydate, String fbType, String fbStatus, String category, int complain) {
		super();
		this.fbId = fbId;
		this.fbTitle = fbTitle;
		this.fbWriter = fbWriter;
		this.fbContent = fbContent;
		this.fbCount = fbCount;
		this.fbCreatedate = fbCreatedate;
		this.fbModifydate = fbModifydate;
		this.fbType = fbType;
		this.fbStatus = fbStatus;
		Category = category;
		Complain = complain;
	}

	public String getFbId() {
		return fbId;
	}

	public void setFbId(String fbId) {
		this.fbId = fbId;
	}

	public String getFbTitle() {
		return fbTitle;
	}

	public void setFbTitle(String fbTitle) {
		this.fbTitle = fbTitle;
	}

	public String getFbWriter() {
		return fbWriter;
	}

	public void setFbWriter(String fbWriter) {
		this.fbWriter = fbWriter;
	}

	public String getFbContent() {
		return fbContent;
	}

	public void setFbContent(String fbContent) {
		this.fbContent = fbContent;
	}

	public int getFbCount() {
		return fbCount;
	}

	public void setFbCount(int fbCount) {
		this.fbCount = fbCount;
	}

	public Date getFbCreatedate() {
		return fbCreatedate;
	}

	public void setFbCreatedate(Date fbCreatedate) {
		this.fbCreatedate = fbCreatedate;
	}

	public Date getFbModifydate() {
		return fbModifydate;
	}

	public void setFbModifydate(Date fbModifydate) {
		this.fbModifydate = fbModifydate;
	}

	public String getFbType() {
		return fbType;
	}

	public void setFbType(String fbType) {
		this.fbType = fbType;
	}

	public String getFbStatus() {
		return fbStatus;
	}

	public void setFbStatus(String fbStatus) {
		this.fbStatus = fbStatus;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public int getComplain() {
		return Complain;
	}

	public void setComplain(int complain) {
		Complain = complain;
	}

	@Override
	public String toString() {
		return "FreeBoard [fbId=" + fbId + ", fbTitle=" + fbTitle + ", fbWriter=" + fbWriter + ", fbContent="
				+ fbContent + ", fbCount=" + fbCount + ", fbCreatedate=" + fbCreatedate + ", fbModifydate="
				+ fbModifydate + ", fbType=" + fbType + ", fbStatus=" + fbStatus + ", Category=" + Category
				+ ", Complain=" + Complain + "]";
	}
	
	
	
	
	
	
	
	
	
}
