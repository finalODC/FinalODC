package com.ohdogcat.odc.homepage.member.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.homepage.member.service.MemberService;
import com.ohdogcat.odc.manager.Membermanage.model.vo.memberBlack;

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
		
		memberBlack mb = mService.memberCheck(m);

		System.out.println(mb);
		
		
			if(loginUser!=null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
				
				if(mb==null) {
					mv.addObject("loginUser",loginUser);
					mv.setViewName("homepage/h_mainpage");					
				}else {
					

					DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
					String sDate = df.format(mb.getBlack_sDate());
					String eDate = df.format(mb.getBlack_eDate());
					
					String msg = "정지된 회원입니다."+sDate+"부터"+eDate+" 로그인 할 수 없습니다. "
									+"정지 사유는 " + mb.getbReason() + " 입니다.";
					
					mv.addObject("msg",msg);
					mv.setViewName("homepage/h_login1");
				}
				
			}else {
				mv.addObject("msg","비밀번호와 아이디를 확인해 주세요!");
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
	public ModelAndView goadminpage(ModelAndView mv, @RequestParam(value="userId", required = false,defaultValue="user")String userId) {
		
		if(userId.equals("admin")) {
			mv.setViewName("manager/managerMain");
		}else {
			mv.setViewName("homepage/h_mainpage");
		}
		
		return mv;
	}

}
