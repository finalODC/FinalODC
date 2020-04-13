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
	int hinsert(HMember hm);

	/**
	 * 병원 계정 정보 변경
	 * @param hm
	 * @return
	 */
	int hosUpdate(HMember hm);

}
