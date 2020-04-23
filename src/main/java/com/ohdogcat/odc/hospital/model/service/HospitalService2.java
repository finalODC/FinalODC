package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.vo.Doctor;
import com.ohdogcat.odc.hospital.model.vo.hoReply;


public interface HospitalService2 {


	/**
	 * 병원 계정 정보 변경
	 * @param hm
	 * @return
	 */
	int hosupdate(HMember hm);

	/**
	 * 병원 설명 등록
	 * @param hm
	 * @return
	 */
	int updatehosinfo(HMember hm);

	/**
	 * 의사 등록
	 * @param hm
	 * @return
	 */
	int indoc(Doctor doc);

	/**
	 * 의사 삭제
	 * @param dId
	 * @return
	 */
	int deleteDoc(int dId);

	int updateDoc(Doctor doc);

	ArrayList<Doctor> docList(String hId);
}
