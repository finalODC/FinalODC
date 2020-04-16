package com.ohdogcat.odc.hospital.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.pet.model.vo.Pet;

@Repository("hoDao")
public class HospitalDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	
	
	/**
	 * 병원에 등록된 의사 리스트 조회
	 * @param hId
	 * @return
	 */
	public ArrayList<HMember> doctorList(int hId) {
		
	
		return (ArrayList)sqlSession.selectList("hmemberMapper.doctorList", hId);
	}




	public ArrayList<Pet> searchPet(String phone) {
		System.out.println(phone);
		return (ArrayList)sqlSession.selectList("chart-mapper.searchPet",phone);
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
