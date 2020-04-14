package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.manager.Membermanage.model.vo.SearchHmember;

@Repository("mHDao")
public class ManagerHospitalDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int gethMListCount(SearchHmember sHm) {
		
		return sqlSession.selectOne("hmanagerMapper.getlistCount",sHm);
	}

	public ArrayList<HMember> gethMemberList(SearchHmember sHm, PageInfo pi) {
		
		
		int offset = (pi.getCurrentPage() -1) *pi.getBoardLimit();
		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("hmanagerMapper.getMemberList",sHm,rw);
	}
	
}
