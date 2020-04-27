package com.ohdogcat.odc.hospital.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.hospital.model.vo.Diagnosis;
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




	public Pet petInfo(String pCode) {
		return sqlSession.selectOne("chart-mapper.petInfo",pCode);
	}




	public Member memberInfo(String phone) {
		return sqlSession.selectOne("chart-mapper.memberInfo",phone);
	}




	public ArrayList<Diagnosis> searchDiag(String pCode, PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) *pi.getBoardLimit();
		
		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		
		
		
		return (ArrayList)sqlSession.selectList("chart-mapper.searchDiag",pCode,rw);
	}




	public int getListCount(String pCode) {
		return sqlSession.selectOne("chart-mapper.countDiag",pCode);
	}



	public int getDiagList(String pCode) {
		return sqlSession.selectOne("chart-mapper.countDiag",pCode);
	}




	public ArrayList<Diagnosis> diagList(String pCode, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) *pi.getBoardLimit();
		
		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		 
		return (ArrayList)sqlSession.selectList("chart-mapper.diagList",pCode,rw);
	}




	public int updateWeight(Pet p) {
		return sqlSession.update("chart-mapper.updateWeight", p);
	}




	public int updateDiag(Diagnosis diag) {
		return sqlSession.insert("chart-mapper.insertDiag",diag);
	}


	public Diagnosis viewContent(int dId) {
		return sqlSession.selectOne("chart-mapper.viewContent",dId);
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
