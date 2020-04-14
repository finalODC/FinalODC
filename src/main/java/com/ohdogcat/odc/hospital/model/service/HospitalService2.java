package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.vo.hoReply;


public interface HospitalService2 {

	/**
	 * 병원 정보 입력
	 * @param hm
	 * @return
	 */
	int hupdate(HMember hm);

	/**
	 * 병원 계정 정보 변경
	 * @param hm
	 * @return
	 */
	int hosupdate(HMember hm);

	/**
	 * 댓글 리스트
	 * @param hId
	 * @return
	 */
	ArrayList<hoReply> selectReplyList(int hId);

	/**
	 * 댓글 등록
	 * @param hr
	 * @return
	 */
	int insertReply(hoReply hr);

}
