package com.ohdogcat.odc.manager.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;

@Repository("mSingoDao")
public class ManagerSingoDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int getFlistCount() {
		return sqlSession.selectOne("singoMapper.getFListCount");
	}
	public int getTlistCount() {
		return sqlSession.selectOne("singoMapper.getTListCount");
	}

	public ArrayList<FreeBoard> getFList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) *pi.getBoardLimit();
		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("singoMapper.getFlist",null,rw);
	}

	public ArrayList<TipBoard> getTList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) *pi.getBoardLimit();
		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("singoMapper.getTlist",null,rw);
	}

}
