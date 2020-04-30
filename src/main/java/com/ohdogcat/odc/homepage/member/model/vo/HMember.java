package com.ohdogcat.odc.homepage.member.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.ohdogcat.odc.hospital.model.vo.Doctor;

public class HMember {
	private String hId;
	private String userId;
	private String userPwd;
	private String hCode;
	private String hName;
	private String hAddress;
	private String hPhone;
	private String hEmail;
	private String hComment;
	private String hFile;
	private Date hCreateDate;
	private Date hModifyDate;
	private String hStatus;
	private String mId;
	
	{
		mId = null;
	}
	
	



	//private ArrayList<hoReply> hoReply;
	private ArrayList<Doctor> doctor;
	
	
	public HMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HMember(String userId, String userPwd, String hCode, String hName, String hAddress, String hPhone, String hEmail) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.hCode = hCode;
		this.hName = hName;
		this.hAddress = hAddress;
		this.hPhone = hPhone;
		this.hEmail = hEmail;
	}



	
	
	public HMember(String hId, String userId, String userPwd, String hCode, String hName, String hAddress,
			String hPhone, String hEmail, String hComment, String hFile, Date hCreateDate, Date hModifyDate,
			String hStatus,  ArrayList<Doctor> doctor) {  //ArrayList<hoReply> hoReply,
		super();
		this.hId = hId;
		this.userId = userId;
		this.userPwd = userPwd;
		this.hCode = hCode;
		this.hName = hName;
		this.hAddress = hAddress;
		this.hPhone = hPhone;
		this.hEmail = hEmail;
		this.hComment = hComment;
		this.hFile = hFile;
		this.hCreateDate = hCreateDate;
		this.hModifyDate = hModifyDate;
		this.hStatus = hStatus;
		//this.hoReply = hoReply;
		this.doctor = doctor;
	}

	public String gethId() {
		return hId;
	}

	public void sethId(String hId) {
		this.hId = hId;
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

	public String gethCode() {
		return hCode;
	}

	public void sethCode(String hCode) {
		this.hCode = hCode;
	}

	public String gethName() {
		return hName;
	}

	public void sethName(String hName) {
		this.hName = hName;
	}

	public String gethAddress() {
		return hAddress;
	}

	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}

	public String gethPhone() {
		return hPhone;
	}

	public void sethPhone(String hPhone) {
		this.hPhone = hPhone;
	}

	
	public String gethEmail() {
		return hEmail;
	}

	public void sethEmail(String hEmail) {
		this.hEmail = hEmail;
	}

	public String gethComment() {
		return hComment;
	}

	public void sethComment(String hComment) {
		this.hComment = hComment;
	}

	public String gethFile() {
		return hFile;
	}

	public void sethFile(String hFile) {
		this.hFile = hFile;
	}

	public Date gethCreateDate() {
		return hCreateDate;
	}

	public void sethCreateDate(Date hCreateDate) {
		this.hCreateDate = hCreateDate;
	}

	public Date gethModifyDate() {
		return hModifyDate;
	}

	public void sethModifyDate(Date hModifyDate) {
		this.hModifyDate = hModifyDate;
	}

	public String gethStatus() {
		return hStatus;
	}

	public void sethStatus(String hStatus) {
		this.hStatus = hStatus;
	}
	

//	public ArrayList<hoReply> getHoReply() {
//		return hoReply;
//	}
//
//	public void setHoReply(ArrayList<hoReply> hoReply) {
//		this.hoReply = hoReply;
//	}

	public ArrayList<Doctor> getDoctor() {
		return doctor;
	}

	public void setDoctor(ArrayList<Doctor> doctor) {
		this.doctor = doctor;
	}
	
	public String getmId() {
		return mId;
	}

	@Override
	public String toString() {
		return "HMember [hId=" + hId + ", userId=" + userId + ", userPwd=" + userPwd + ", hCode=" + hCode + ", hName="
				+ hName + ", hAddress=" + hAddress + ", hPhone=" + hPhone + ", hEmail=" + hEmail + ", hComment="
				+ hComment + ", hFile=" + hFile + ", hCreateDate=" + hCreateDate + ", hModifyDate=" + hModifyDate
				+ ", hStatus=" + hStatus + ", hoReply=" +", doctor=" + doctor + "]" +mId;   //hoReply + 
	}



	
}
