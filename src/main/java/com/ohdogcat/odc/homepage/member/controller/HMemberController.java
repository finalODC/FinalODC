package com.ohdogcat.odc.homepage.member.controller;


import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.service.HMemberService;
import com.ohdogcat.odc.hospital.model.vo.Doctor;

@SessionAttributes("loginUser")
@Controller
public class HMemberController {
	
	@Autowired
	private HMemberService hmService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	


	
	 
	 @RequestMapping("hloginp.do")
	 public String hloginp(){
		 return "homepage/h_login6";
	 }
	  
	 
	@RequestMapping("hSignin.do")
	public String hInsertForm() {
		return "homepage/hp_signin";
	}
	
	@RequestMapping("hlogin.do")
	public ModelAndView hlogin(ModelAndView mv, HttpServletRequest request, HMember m,
			@RequestParam(value="dName",required=false) String dName ) {
		String pwd = m.getUserPwd();
		if(m.getUserId().equals("admin")&& pwd.equals("admin")) {
			m.setUserPwd(null);
			mv.addObject("loginUser",m);
			mv.setViewName("redirect:mMain.ma");
			return mv;
		}
		
		if(!dName.equals("")) {
			ArrayList<Doctor> doc = new ArrayList<>();
			Doctor doctor = new Doctor();
			doctor.setDocName(dName);
			doc.add(doctor);
			m.setDoctor(doc);
		}
		
		m = hmService.loginMem(m);
		if(m!=null &&bCryptPasswordEncoder.matches(pwd, m.getUserPwd())) {
			mv.addObject("loginUser",m);
			if(dName.equals("")) {
				mv.setViewName("redirect:info.ho");
			}else {
				//의사 데이터 가져와서 
				mv.setViewName("hospital/doctorChart");
			}
			
		}else {
			mv.addObject("msg","아이디와 비밀번호를 확인해주세요");
			mv.setViewName("homepage/h_login6");
		}
		
		return mv;
	}
	
	@RequestMapping("hlogout.do")
	public String hlogin(SessionStatus session) {
		
		
		session.setComplete();
		return "homepage/h_index";
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
	 * @throws UnsupportedEncodingException 
	 */
	@ResponseBody
	@RequestMapping(value ="hBusiness.do")
	public String checkBusiness(String hCode )  {
		String result ="";
		
		int check = hmService.checkBusiness(hCode);
		
		if(check==0) {
			result = "ok";
		}
		
		
	 return result;
	}
	
	
	@RequestMapping("hInsert.do")
	public String hInsert(Model m1,HMember m,String add1, String add2, String add3) {

		
		
		m.setUserPwd(bCryptPasswordEncoder.encode(m.getUserPwd()));
		if(!add1.equals("")) {
			m.sethAddress(add1 +"//"+ add2+"//" + add3);
		}
		
		
		int result = hmService.hInsert(m);
		if(result >0) {

			m1.addAttribute("msg","회원가입이 완료되었습니다.");
			return "homepage/h_login6";
			
		}else {
			//에러 페이지
			m1.addAttribute("msg","회원가입이 실패했습니다. 다시시도해주세요.");
			return "homepage/h_login6";
		}
		

	}
	@ResponseBody
	@RequestMapping("checkHemail.do")
	public String checkHEmail(String email) {
		int result = hmService.checkHEmail(email);
		
		return Integer.valueOf(result).toString(); 
	}
	

	
}
