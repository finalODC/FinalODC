package com.ohdogcat.odc.hospital.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.vo.Doctor;
import com.ohdogcat.odc.hospital.model.vo.hoReply;



@Repository("hoDao2")
public class HospitalDao2 {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	/**
	 * 병원 정보 입력
	 * @param hm
	 * @return
	 */
	public int hupdate(HMember hm) {
		
		return sqlSession.update("hospitalMapper.hupdate", hm);
	}

	/**
	 * 병원 계정 정보 변경
	 * @param hm
	 * @return
	 */
	public int hosupdate(HMember hm) {

		return sqlSession.update("hospitalMapper.hosupdate", hm);
	}

	/**
	 * 댓글 리스트
	 * @param hId
	 * @return
	 */
	public ArrayList<hoReply> selectReplyList(int hId) {
		
		return (ArrayList)sqlSession.selectList("hospitalMapper.selectReplyList", hId);
	}

	/**
	 * 댓글 등록
	 * @param hr
	 * @return
	 */
	public int insertReply(hoReply hr) {
		
		return sqlSession.insert("hospitalMapper.insertReply", hr);
	}

	/**
	 * 병원 설명 등록
	 * @param hm
	 * @return
	 */
	public int updatehosinfo(HMember hm) {
		
		return sqlSession.update("hospitalMapper.updatehosinfo",hm);
	}

	/**
	 * 의사 등록
	 * @param hm
	 * @return
	 */
	public int indoc(Doctor doc) {
		
		return sqlSession.insert("hospitalMapper.indoc", doc);
	}

	
			
}
