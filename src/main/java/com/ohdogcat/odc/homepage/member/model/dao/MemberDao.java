package com.ohdogcat.odc.homepage.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.homepage.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertMember(Member m) {
		
		return sqlSession.insert("memberMapper.insertMember",m);
	}

}
