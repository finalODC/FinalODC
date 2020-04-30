package com.ohdogcat.odc.manager.Membermanage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.Membermanage.model.vo.manageMember;
import com.ohdogcat.odc.manager.Membermanage.model.vo.memberBlack;

@Repository("managemDao")
public class manageMemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<manageMember> manageMemberList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("manageMember.manageMemberList",null,rowBounds);
	}

	public int MemberListCount() {

		return sqlSession.selectOne("manageMember.MemberListCount");
	}

	public int sMemberListCount(String searchkey) {
		return sqlSession.selectOne("manageMember.sMemberListCount",searchkey);
	}

	public ArrayList<manageMember> managesMemberList(PageInfo pi, String searchkey) {
		
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("manageMember.managesMemberList",searchkey,rowBounds);
	}

	public int delManageMember(int mid) {
		return sqlSession.update("manageMember.delManageMember",mid);
	}

	public int blackmember(memberBlack mb) {
		return sqlSession.insert("manageMember.memberblack",mb);
	}

}
