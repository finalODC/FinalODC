package com.ohdogcat.odc.homepage.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.manager.Membermanage.model.vo.memberBlack;

@Repository("mDao")
public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertMember(Member m) {
		
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public Member loginMember(Member m) {
		
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public int idCheck(String id) {

		return sqlSession.selectOne("memberMapper.idCheck",id);
	}

	public memberBlack memberCheck(Member m) {
		return sqlSession.selectOne("memberMapper.memberCheck",m);
	}

}
