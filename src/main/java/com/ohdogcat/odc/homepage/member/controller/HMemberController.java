package com.ohdogcat.odc.homepage.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ohdogcat.odc.homepage.member.service.HMemberService;

@Controller
public class HMemberController {
	
	@Autowired
	private HMemberService hmService;

	@RequestMapping("hSignin.do")
	public String hInsertForm() {
		return "homepage/hp_signin.jsp";
	}
	
	@ResponseBody
	@RequestMapping("hIdCheck.do")
	public String hIdCheck(String userId) {
		
		int result = hmService.hIdCheck(userId);

		return Integer.valueOf(result).toString();
		
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
