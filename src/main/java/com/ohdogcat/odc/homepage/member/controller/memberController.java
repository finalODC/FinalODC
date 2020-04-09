package com.ohdogcat.odc.homepage.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.homepage.member.service.MemberService;

@Controller
public class memberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mlogin.do")
	public String mlogin() {
		return "homepage/h_login1";
	}
	
	@RequestMapping("msignin.do")
	public String msignin() {
		return "homepage/m_signin";
	}
	
	@RequestMapping("minsert.do")
	public String insertMember(Member m) {
		
		int result = mService.insertMember(m);
		
		return "homepage/h_index";
		
	}

}
