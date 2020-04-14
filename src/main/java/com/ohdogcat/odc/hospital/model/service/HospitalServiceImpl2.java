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
	public int hupdate(HMember hm) {
		
		return hoDao2.hupdate(hm);
	}

	/**
	 * 병원 계정 정보 변경
	 */
	@Override
	public int hosUpdate(HMember hm) {
		
		return hoDao2.hosUpdate(hm);
	}

	/**
	 * 댓글 리스트 
	 */
	@Override
	public ArrayList<hoReply> selectReplyList(int hId) {
		
		return hoDao2.selectReplyList(hId);
	}

	/**
	 * 댓글 등록
	 */
	@Override
	public int insertReply(hoReply hr) {
		
		return hoDao2.insertReply(hr);
	}

	
	
}
