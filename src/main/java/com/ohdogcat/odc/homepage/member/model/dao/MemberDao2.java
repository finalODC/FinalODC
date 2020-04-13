package com.ohdogcat.odc.homepage.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.homepage.member.model.vo.Member;

@Repository("mDao2")
public class MemberDao2 {
	//성근
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public int checkEmail(String email) {
		return sqlSession.selectOne("memberMapper2.checkemail",email);
	}
	
	
	public int checkPwdEmail(Member m) {
		return sqlSession.selectOne("memberMapper2.checkPwdEmail",m);
	}


	public int confirmPwd(Member m) {
		return sqlSession.update("memberMapper2.confirmPwd",m);
	}
	
	
	
	
	
	


}
