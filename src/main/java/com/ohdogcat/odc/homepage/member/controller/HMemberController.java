package com.ohdogcat.odc.homepage.member.controller;


import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.ohdogcat.odc.common.email.EmailService;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.service.HMemberService;
import com.ohdogcat.odc.hospital.model.vo.Doctor;

@SessionAttributes({"loginUser","code"})
@Controller
public class HMemberController {
	
	@Autowired
	private HMemberService hmService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	 @Autowired
		private EmailService mailsender;

	
	 
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
		System.out.println(m.getDoctor() == null);
		
		m = hmService.loginMem(m);
		System.out.println(m);
		//(new Doctor().setDocName(dName)
		if(m!=null &&bCryptPasswordEncoder.matches(pwd, m.getUserPwd())) {
			mv.addObject("loginUser",m);
			if(dName.equals("")) {
				mv.setViewName("redirect:info.ho");
			}else {
				//의사 데이터 가져와서 
				mv.setViewName("hospital/doctorChart");
			}
			
		}else {
			mv.addObject("msg","aa");
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
	public String hInsert(HMember m,String add1, String add2, String add3, SessionStatus session) {
		
		
		m.setUserPwd(bCryptPasswordEncoder.encode(m.getUserPwd()));
		if(!add1.equals("")) {
			m.sethAddress(add1 +"//"+ add2+"//" + add3);
		}
		
		System.out.println(m);
		
		//System.out.println(m);
		
		int result = hmService.hInsert(m);
		if(result >0) {
			session.setComplete();
			return "redirect:hloginp.do";
			
		}else {
			//에러 페이지
		}
		
		return"";
	}
	@ResponseBody
	@RequestMapping("checkHemail.do")
	public String checkHEmail(String email) {
		int result = hmService.checkHEmail(email);
		
		return Integer.valueOf(result).toString(); 
	}
	
	@ResponseBody
	@RequestMapping(value="sendCode.do", method= RequestMethod.POST)
	public String sendCode(String email, Model m) {
		//난수 만들기
		StringBuffer sb = new StringBuffer();
		for(int i =0; i<3; i++) {
			int nRan = (int)(Math.random()*123+1);
			sb.append(nRan);

			for(int j = 0; j<Math.round(Math.random()+1);j++) {
				sb.append((char)((int)(Math.random()*26)+65));
			}
			
		}
		
		System.out.println(sb.toString());
		m.addAttribute("code",sb.toString());
		mailsender.mailSendWithUserKey(sb.toString(), email);
		return "1";
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="codeCheck.do", method=RequestMethod.POST)
	public String checkCode(String code, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String saveCode = (String)session.getAttribute("code");
		String result="";

		if(saveCode.equals(code)) {
			result ="1";
		}
		
		return result;
	}
	
}
