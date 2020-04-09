package com.ohdogcat.odc.homepage.member.model.vo;

import java.sql.Date;

public class Member {
	private int mId;
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String phone;
	private Date mCreateDate;
	private Date mModifyDate;
	private String mStatus;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(int mId, String userId, String userPwd, String userName, String email, String phone, Date mCreateDate,
			Date mModifyDate, String mStatus) {
		super();
		this.mId = mId;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.mCreateDate = mCreateDate;
		this.mModifyDate = mModifyDate;
		this.mStatus = mStatus;
	}
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getmCreateDate() {
		return mCreateDate;
	}
	public void setmCreateDate(Date mCreateDate) {
		this.mCreateDate = mCreateDate;
	}
	public Date getmModifyDate() {
		return mModifyDate;
	}
	public void setmModifyDate(Date mModifyDate) {
		this.mModifyDate = mModifyDate;
	}
	public String getmStatus() {
		return mStatus;
	}
	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}
	@Override
	public String toString() {
		return "Member [mId=" + mId + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", email=" + email + ", phone=" + phone + ", mCreateDate=" + mCreateDate + ", mModifyDate="
				+ mModifyDate + ", mStatus=" + mStatus + "]";
	}
	
	
}
