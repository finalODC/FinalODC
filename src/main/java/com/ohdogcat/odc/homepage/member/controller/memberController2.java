package com.ohdogcat.odc.homepage.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.homepage.member.service.MemberService2;


@Controller
public class memberController2 {
	
//	성근
	
	@Autowired
	private MemberService2 mService2;
	
	@Autowired
	private BCryptPasswordEncoder be;
	
	
	@RequestMapping("goIndex.do")
	public String goIndex() {
		return "homepage/h_index";
	}
	
	
	/**
	 * 아이디 찾기 이동
	 * @return
	 */
	@RequestMapping("idsearch.do")
	public String idsearch() {
		return "homepage/h_login2";
	}
	
	
	/**
	 * 병원 아이디 찾기
	 * @return
	 */
	@RequestMapping("hpidsearch.do")
	public String hpidsearch() {
		return "homepage/hp_searchId";
	}
	
	/**
	 * 찾은 아이디 결과페이지로
	 * @param userId
	 * @param m
	 * @return
	 */
	@RequestMapping("idResult.do")
	public String idResult(String userId, Model m) {
		
		m.addAttribute("userId",userId);
		
		return "homepage/h_login5";
	}
	
	@RequestMapping("hpidResult.do")
	public String hpidResult(String userId, Model m) {
		m.addAttribute("userId",userId);
		
		return "homepage/searchIdResult";
	}
	
	/**
	 * 비밀번호 찾기
	 * @return
	 */
	@RequestMapping("pwdsearch.do")
	public String pwdsearch() {
		return "homepage/h_login3";
	}
	
	
	
	
	/**
	 * 비밀번호 찾기
	 * @return
	 */
	@RequestMapping("hppwdsearch.do")
	public String hppwdsearch() {
		return "homepage/hp_searchPwd";
	}
	
	/**
	 * 비밀번호 변경페이지
	 * @param userId
	 * @param m
	 * @return
	 */
	@RequestMapping("changePwd.do")
	public String changePwd(String userId, Model m) {
		m.addAttribute("userId",userId);
		return "homepage/changePwd";
	}
	
	/**
	 * 이메일 체크
	 * @param email
	 * @return
	 */
	@ResponseBody
	@RequestMapping("checkemail.do")
	public String checkEmail(String email) {
		
		String userId = mService2.checkEmail(email);
		
		
		System.out.println(email);
		System.out.println(userId);
		
		return userId;
		
	}
	
	/**
	 * 병원 이메일 체크
	 * @param email
	 * @return
	 */
	@ResponseBody
	@RequestMapping("hp_checkemail.do")
	public String hpcheckEmail(String email) {
		
		String userId = mService2.hpcheckEmail(email);
		
		System.out.println(email);
		System.out.println(userId);
		
		return userId;
		
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
	
	
	
	/**
	 * 병원 비밀번호 변경
	 * @param id
	 * @param email
	 * @return
	 */
	@ResponseBody
	@RequestMapping("checkhpPwdEmail.do")
	public String checkhpPwdEmail(String id, String hEmail) {
		String result = "";
		
		HMember hp = new HMember();
		
		hp.setUserId(id);
		hp.sethEmail(hEmail);
		
		System.out.println(hp);
		int search = mService2.checkhpPwdEmail(hp);
		
		if(search==1) {
			result="ok";
		}
		
		return result;
	}
	
	/**
	 * 입력한 비밀번호로 변경
	 * @param pwd
	 * @param userId
	 * @return
	 */
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
	
	
	
	/**
	 * 병원 비밀번호 변경페이지로 이동
	 * @param userId
	 * @param m
	 * @return
	 */
	@RequestMapping("changehpPwd.do")
	public String changehpPwd(String userId, Model m) {
		m.addAttribute("userId",userId);
		return "homepage/changeHpPwd";
	}
	
	
	
	/**
	 * 입력한 비밀번호로 변경
	 * @param pwd
	 * @param userId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("confirmhpPwd.do")
	public String confirmHpPwd(String userPwd, String userId) {
		HMember hp = new HMember();
		
		System.out.println(userPwd);
		hp.setUserId(userId);
		hp.setUserPwd(be.encode(userPwd));
		int result = mService2.confirmhpPwd(hp);
		System.out.println(result);
		
		return Integer.valueOf(result).toString();
	}
	
	

}
