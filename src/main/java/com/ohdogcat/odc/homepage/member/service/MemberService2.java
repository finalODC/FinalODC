package com.ohdogcat.odc.homepage.member.service;

import com.ohdogcat.odc.homepage.member.model.vo.Member;

public interface MemberService2 {

	//성근
	
	
	int checkEmail(String email);

	int checkPwdEmail(Member m);

	int confirmPwd(Member m);

}
