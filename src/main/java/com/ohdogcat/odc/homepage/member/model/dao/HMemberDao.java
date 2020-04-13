package com.ohdogcat.odc.homepage.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;

@Repository("hmDao")
public class HMemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public HMember loginMem(String userId) {
		
		return sqlSession.selectOne("hmemberMapper.login",userId);
	}
	
	public int checkBusiness(String hCode) {
		
		return sqlSession.selectOne("hmemberMapper.checkBusiness",hCode);
	}


	public int hIdCheck(String userId) {
		
		
		return sqlSession.selectOne("hmemberMapper.idCount",userId);
	}

	public int checkHEmail(String email) {
		
		return sqlSession.selectOne("hmemberMapper.emailcheck",email);
	}

	public int hInsert(HMember m) {
		
		return sqlSession.insert("hmemberMapper.insertHmember",m);
	}




	
}
