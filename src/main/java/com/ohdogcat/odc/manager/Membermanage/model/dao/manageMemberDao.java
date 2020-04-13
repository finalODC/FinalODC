package com.ohdogcat.odc.manager.Membermanage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.Membermanage.model.vo.manageMember;

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

}
