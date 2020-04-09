package com.ohdogcat.odc.homepage.member.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HMemberController {

	@RequestMapping("hSignin.do")
	public String hInsertForm() {
		return "homepage/hp_signin.jsp";
	}
	
	@ResponseBody
	@RequestMapping("hIdCheck.do")
	public String hIdChekck() {
		
		return "";
		
	}
	
	/**
	 * 사업자 번호 확인
	 * @return
	 */
	@ResponseBody
	@RequestMapping("hBusiness.do")
	public String checkBuisness() {
		
		return "";
	}
}
