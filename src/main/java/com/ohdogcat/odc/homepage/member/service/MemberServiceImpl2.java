package com.ohdogcat.odc.homepage.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.dao.MemberDao2;
import com.ohdogcat.odc.homepage.member.model.vo.Member;

@Service("mService2")
public class MemberServiceImpl2 implements MemberService2 {
	//성근
	
	@Autowired
	private MemberDao2 mDao2;
	
	

	@Override
	public int checkEmail(String email) {
		return mDao2.checkEmail(email);
	}



	@Override
	public int checkPwdEmail(Member m) {
		return mDao2.checkPwdEmail(m);
	}



	@Override
	public int confirmPwd(Member m) {
		return mDao2.confirmPwd(m);
	}




}
