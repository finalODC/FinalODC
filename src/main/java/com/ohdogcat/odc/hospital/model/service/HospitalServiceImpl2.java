package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao2;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Service("hoService2")
public class HospitalServiceImpl2 implements HospitalService2{

	@Autowired
	private HospitalDao2 hoDao2;

	/**
	 * 병원 정보 입력
	 */
	@Override
	public int hinsert(HMember hm) {
		
		return hoDao2.hinsert(hm);
	}

	/**
	 * 병원 계정 정보 변경
	 */
	@Override
	public int hosUpdate(HMember hm) {
		return hoDao2.hosUpdate(hm);
	}

	
	
}
