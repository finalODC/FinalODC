package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao2;
import com.ohdogcat.odc.hospital.model.vo.Doctor;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Service("hoService2")
public class HospitalServiceImpl2 implements HospitalService2{

	@Autowired
	private HospitalDao2 hoDao2;

	/**
	 * 병원 계정 정보 변경
	 */
	@Override
	public int hosupdate(HMember hm) {

		return hoDao2.hosupdate(hm);
	}


	/**
	 * 병원 설명 등록
	 */
	@Override
	public int updatehosinfo(HMember hm) {

		
		return hoDao2.updatehosinfo(hm);
	}

	/**
	 * 의사 등록
	 */
	@Override
	public int indoc(Doctor doc) {
		
		return hoDao2.indoc(doc);
	}

	/**
	 * 의사 삭제
	 */
	@Override
	public int deleteDoc(int dId) {
		
		return hoDao2.deleteDoc(dId);
	}


	/**
	 * 의사 수정
	 */
	@Override
	public int updateDoc(Doctor doc) {
		
		return hoDao2.updateDoc(doc);
	}


	@Override
	public ArrayList<Doctor> docList(String hId) {
		
		return hoDao2.docList(hId);
	}



	
	
}
