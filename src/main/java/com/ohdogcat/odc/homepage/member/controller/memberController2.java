package com.ohdogcat.odc.homepage.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.homepage.member.service.MemberService2;


@Controller
public class memberController2 {
	
//	성근
	
	@Autowired
	private MemberService2 mService2;
	
	@Autowired
	private BCryptPasswordEncoder be;
	
	@RequestMapping("idsearch.do")
	public String idsearch() {
		return "homepage/h_login2";
	}
	
	
	@RequestMapping("pwdsearch.do")
	public String pwdsearch() {
		return "homepage/h_login3";
	}
	
	@RequestMapping("changePwd.do")
	public String changePwd(String userId, Model m) {
		m.addAttribute("userId",userId);
		return "homepage/changePwd";
	}
	
	@ResponseBody
	@RequestMapping("checkemail.do")
	public String checkEmail(String email) {
		
		int result = mService2.checkEmail(email);
		System.out.println(email);
		if(result>0) {
			return "ok";
		}else {
			return "fail";
		}
		
		
	}
	
	@ResponseBody
	@RequestMapping("checkPwdEmail.do")
	public String checkPwdEmail(String id, String email) {
		String result = "";
		
		Member m = new Member();
		
		
		
		m.setUserId(id);
		m.setEmail(email);
		int search = mService2.checkPwdEmail(m);
		
		if(search==1) {
			result="ok";
		}
		
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("confirmPwd.do")
	public String confirmPwd(String pwd, String userId) {
		Member m = new Member();
		System.out.println(pwd);
		m.setUserId(userId);
		m.setUserPwd(be.encode(pwd));
//		m.setUserPwd(pwd);
		int result = mService2.confirmPwd(m);
		System.out.println(result);
		
		return Integer.valueOf(result).toString();
	}
	
	
	
	

}
