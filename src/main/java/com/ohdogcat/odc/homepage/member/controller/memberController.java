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

@SessionAttributes("loginUser")
@Controller
public class memberController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("mloginp.do")
	public String mlogin() {
		return "homepage/h_login1";
	}
	
	@RequestMapping("msignin.do")
	public String msignin() {
		return "homepage/m_signin";
	}
	
	@RequestMapping("minsert.do")
	public String insertMember(Member m) {
		
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		
		m.setUserPwd(encPwd);
		
		int result = mService.insertMember(m);
		if(result>0) {
			return "homepage/h_login1";
		}else {
			return "homepage/h_signin";
		}
		
		
	}
	
	@RequestMapping("mlogin.do")
	public ModelAndView loginMember(ModelAndView mv,Member m) {
		
		
		Member loginUser = mService.loginMember(m);

		
		if(loginUser!=null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			mv.addObject("loginUser",loginUser);
			mv.setViewName("homepage/h_mainpage");
			
		}else {
			mv.setViewName("homepage/h_login1");
		}
		
			
			return mv;
		
	}
	
	@RequestMapping("mlogout.do")
	public String logoutMember(SessionStatus status) {
		
		status.setComplete();
		
		return "homepage/h_index";
		
	}
	
	@ResponseBody
	@RequestMapping("idcheck.do")
	public String idCheck(String id) {

		int result = mService.idCheck(id);
		
		if(result>0) {
			return "fail";
		}else {
			return "ok";
		}
		
	}
	
	@RequestMapping("updatemem.do")
	public String updatemem() {
		
		return "homepage/myPagePerson";
	}
	
	@RequestMapping("gosignin.do")
	public String gosignin() {
		
		return "homepage/hm_signin";
	}
	
	@RequestMapping("gomainPage.do")
	public String gomainpage() {
		return "homepage/h_mainpage";
	}
	
	@RequestMapping("goadminpage.do")
	public String goadminpage() {
		return "manager/managerMain";
	}

}
