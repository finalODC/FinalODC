package com.ohdogcat.odc.manager.Membermanage.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.Membermanage.model.vo.manageMember;

public interface manageMemberService {

	/**
	 * 회원관리 멤버 불러오기
	 * @return
	 */
	ArrayList<manageMember> manageMemberList(PageInfo pi);

	/**
	 * 회원 전체 숫자 가져오기
	 * @return
	 */
	int MemberListCount();

	/**
	 * 검색한 회원 숫자
	 * @param searchkey
	 * @return
	 */
	int sMemberListCount(String searchkey);

	/**
	 * 회원 검색
	 * @param pi
	 * @return
	 */
	ArrayList<manageMember> managesMemberList(PageInfo pi,String searchkey);

	/**
	 * 회원 삭제
	 * @param mid
	 * @return
	 */
	int delManageMember(int mid);

}
