package com.ohdogcat.odc.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {

	// private ManagerService mService

	/// Include 연결
	// 추후 ModelAndView로 변경 필요
	/**
	 * 메인페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping(value = "mMain.ma")
	public String managerMain() {

		return "managerMain";
	}

	/**
	 * 일반회원 관리
	 * 
	 * @return
	 */
	@RequestMapping("mMmember.ma")
	public String ManagerMember() {

		return "managerMember";
	}

	/**
	 * 병원회원 관리
	 * 
	 * @return
	 */
	/*
	 * @RequestMapping("mHmember.ma") public String HospitalMember() { return
	 * "managerHospital"; }
	 */

	/**
	 * @return
	 */
	@RequestMapping("mNotice.ma")
	public String managerNotice() {
		return "managerNotice";
	}
	/*	*//**
			 * 문의사항
			 * 
			 * @return
			 *//*
				 * @RequestMapping("mAsk.ma") public String managerAsk() { return "managerAsk";
				 * }
				 */

	/**
	 * 팁게시판
	 * 
	 * @return
	 */
	@RequestMapping("mTip.ma")
	public String managerTipBoard() {
		return "managerBoard";
	}

	/**
	 * 자유게시판
	 * 
	 * @return
	 */
	@RequestMapping("mFree.ma")
	public String managerFreeBoard() {
		return "managerBoard";
	}

}
