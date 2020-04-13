package com.ohdogcat.odc.board.Dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;

@Repository("bDao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	

	public int FreeListCount() {
		
		return sqlSession.selectOne("boardMapper.FreeListCount");
	}
	
	

	public ArrayList<FreeBoard> selectFreeList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds =new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeList",null,rowBounds);
	}
	
	
	
}
