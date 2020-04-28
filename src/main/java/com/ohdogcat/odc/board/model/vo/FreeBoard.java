package com.ohdogcat.odc.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class FreeBoard {

	
	private int fbId;
	private String fbTitle;
	private String fbWriter;
	private String fbContent;
	private int fbCount;
	private Date fbCreatedate;
	private Date fbModifydate;
	private String fbType;
	private String fbStatus;
	private String category;
	private int complain;
	
	public FreeBoard() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FreeBoard(int fbId, String fbTitle, String fbWriter, String fbContent, int fbCount, Date fbCreatedate,
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
		this.category = category;
		this.complain = complain;
	}

	public int getFbId() {
		return fbId;
	}

	public void setFbId(int fbId) {
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
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getComplain() {
		return complain;
	}

	public void setComplain(int complain) {
		this.complain = complain;
	}

		
}
