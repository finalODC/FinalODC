package com.ohdogcat.odc.homepage.member.service;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.model.vo.Member;

public interface MemberService2 {

	//성근
	
	
	String checkEmail(String email);

	int checkPwdEmail(Member m);

	int confirmPwd(Member m);

	String hpcheckEmail(String email);

	int checkhpPwdEmail(HMember hp);

	int confirmhpPwd(HMember hp);
	
	

}
