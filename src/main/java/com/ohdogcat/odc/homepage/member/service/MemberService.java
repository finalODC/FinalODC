package com.ohdogcat.odc.homepage.member.service;

import com.ohdogcat.odc.homepage.member.model.vo.Member;

public interface MemberService {

	/**
	 * 일반회원 회원가입
	 * @param m
	 * @return
	 */
	int insertMember(Member m);

}
