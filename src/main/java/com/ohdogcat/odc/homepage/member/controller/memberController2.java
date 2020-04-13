package com.ohdogcat.odc.homepage.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.homepage.member.service.MemberService;


@Controller
public class memberController2 {
	
	
	@RequestMapping("idsearch.do")
	public String idsearch() {
		return "homepage/h_login2";
	}
	
	
	@RequestMapping("pwdsearch.do")
	public String pwdsearch() {
		return "homepage/h_login3";
	}
	
	
	
	@RequestMapping("checkemail.do")
	public String checkEmail() {
		int result = 0;
		
		
		
		if(result>0) {
			return "ok";
		}else {
			return "fail";
		}
		
		
	}
	
	
	
	
	
	
	
	

}
