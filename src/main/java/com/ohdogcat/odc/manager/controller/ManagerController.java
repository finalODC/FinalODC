package com.ohdogcat.odc.manager.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ManagerController {
	
	//private ManagerService mService
	
	///Include 연결
	
	/**
	 * 메인페이지 이동
	 * @return
	 */
	@RequestMapping(value="mMain.ma")
	public String managerMain() {
		
		return "managerMain";
	}
	
	/**
	 * 일반회원 관리
	 * @return
	 */
	@RequestMapping("mMmeber.ma")
	public String ManagerMember() {
		return "managerMember";
	}
	
	/**
	 * 병원회원 관리
	 * @return
	 */
	@RequestMapping("mHmember.ma")
	public String HospitalMember() {
		return "managerHospital";
	}
	
	@RequestMapping("mNotice.ma")
	public String managerNotice() {
		return "managerNotice";
	}
	

}
