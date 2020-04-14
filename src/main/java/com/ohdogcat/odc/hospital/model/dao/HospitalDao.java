package com.ohdogcat.odc.hospital.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Repository("hoDao")
public class HospitalDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	
	
	/**
	 * 병원에 등록된 의사 리스트 조회
	 * @param hId
	 * @return
	 */
	public ArrayList<HMember> doctorList(String hId) {
		
		return null;
	}
	
	
	
	
	

	/*	*//**
			 * 병원 정보 입력
			 * 
			 * @param hm
			 * @return
			 *//*
				 * public int hupdate(HMember hm) {
				 * 
				 * return sqlSession.update("hospitalMapper.hupdate", hm); }
				 */

}
