package com.ohdogcat.odc.manager.model.dao;

import java.util.ArrayList;
import java.util.Map;

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
	public FreeBoard getFDetail(int bId) {
		
		return sqlSession.selectOne("singoMapper.getFDetail",bId);
	}
	public TipBoard getTDetail(int bId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("singoMapper.getTDetail",bId);
	}
	public Integer singoReset(Map map) {
		
		return sqlSession.update("singoMapper.singoReset",map);
	}
	public Integer singoDel(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.update("singoMapper.singoDel",map);
	}
	public Integer singoFResetall(Map bid) {
		// TODO Auto-generated method stub
		return sqlSession.update("singoMapper.singoFResetall",bid);
	}
	public Integer singoTResetall(Map bid) {
		// TODO Auto-generated method stub
		return sqlSession.update("singoMapper.singoTResetall",bid);
	}
	public Integer singoFDelall(Map bid) {
		// TODO Auto-generated method stub
		return sqlSession.update("singoMapper.singoFDelall",bid);
	}
	public Integer singoTDelall(Map bid) {
		// TODO Auto-generated method stub
		return sqlSession.update("singoMapper.singoTDelall",bid);
	}

}
