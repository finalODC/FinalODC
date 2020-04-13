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
public class memberController3 {
	
	@RequestMapping("mypageperson.do")
	public String myPagePerson() {
		return "homepage/myPagePerson";
	}
	
	@RequestMapping("mypagepet.do")
	public String myPagePet() {
		return "homepage/myPagePet";
	}
	
	@RequestMapping("mypageQNA.do")
	public String myPageQNA() {
		return "homepage/myPageQNA";
	}
	
	
	
	
	
	

}
