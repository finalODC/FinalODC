package com.ohdogcat.odc.homepage.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("hmDao")
public class HMemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int hIdCheck(String userId) {
		
		return sqlSession.selectOne("hmemberMapper.idCount",userId);
	}

}
