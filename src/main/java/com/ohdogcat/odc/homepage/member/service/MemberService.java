package com.ohdogcat.odc.homepage.member.service;

import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.manager.Membermanage.model.vo.memberBlack;

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

	/**
	 * 멤버 정지상태 체크
	 * @param m
	 * @return
	 */
	memberBlack memberCheck(Member m);



}
