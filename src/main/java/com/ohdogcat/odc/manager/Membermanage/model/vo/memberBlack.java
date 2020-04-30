package com.ohdogcat.odc.manager.Membermanage.model.vo;

import java.sql.Date;

public class memberBlack {
	private int bNum;
	private String userId;
	private String bReason;
	private int day;
	private Date black_sDate;
	private Date black_eDate;
	public memberBlack() {
		super();
		// TODO Auto-generated constructor stub
	}
	public memberBlack(int bNum, String userId, String bReason, int day, Date black_sDate, Date black_eDate) {
		super();
		this.bNum = bNum;
		this.userId = userId;
		this.bReason = bReason;
		this.day = day;
		this.black_sDate = black_sDate;
		this.black_eDate = black_eDate;
	}
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getbReason() {
		return bReason;
	}
	public void setbReason(String bReason) {
		this.bReason = bReason;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public Date getBlack_sDate() {
		return black_sDate;
	}
	public void setBlack_sDate(Date black_sDate) {
		this.black_sDate = black_sDate;
	}
	public Date getBlack_eDate() {
		return black_eDate;
	}
	public void setBlack_eDate(Date black_eDate) {
		this.black_eDate = black_eDate;
	}
	@Override
	public String toString() {
		return "memberBlack [bNum=" + bNum + ", userId=" + userId + ", bReason=" + bReason + ", day=" + day
				+ ", black_sDate=" + black_sDate + ", black_eDate=" + black_eDate + "]";
	}
	
	
	
}
