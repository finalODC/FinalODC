package com.ohdogcat.odc.manager.Membermanage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.manager.Membermanage.model.vo.manageMember;

@Repository("managemDao")
public class manageMemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<manageMember> manageMemberList() {
		return (ArrayList)sqlSession.selectList("manageMember.manageMemberList");
	}

	public int MemberListCount() {

		return sqlSession.selectOne("manageMember.MemberListCount");
	}

}
