package com.ohdogcat.odc.homepage.member.service;

import com.ohdogcat.odc.homepage.member.model.vo.Member;

public interface MemberService {

	/**
	 * 일반회원 회원가입
	 * @param m
	 * @return
	 */
	int insertMember(Member m);

	/**
	 * 회원 로그인
	 * @param m
	 * @return
	 */
	Member loginMember(Member m);

	/**
	 * 아이디 중복 체크
	 * @param id
	 * @return
	 */
	int idCheck(String id);

}
