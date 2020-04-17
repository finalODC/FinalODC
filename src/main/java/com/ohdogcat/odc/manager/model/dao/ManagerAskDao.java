package com.ohdogcat.odc.manager.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.qna.model.vo.Qna;

@Repository("mADao")
public class ManagerAskDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		
		return sqlSession.selectOne("managerAskMapper.getListcount");
	}

	public ArrayList<Qna> getQnaList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) *pi.getBoardLimit();
		
		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("managerAskMapper.getList",null,rw);
	}

	public Qna getQnd(int qId) {
		
		return sqlSession.selectOne("managerAskMapper.getQna",qId);
	}

}
