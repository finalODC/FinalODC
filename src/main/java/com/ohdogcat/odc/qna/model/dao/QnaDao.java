package com.ohdogcat.odc.qna.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.qna.model.vo.Qna;
import com.ohdogcat.odc.qna.model.vo.QnaReply;

@Repository("qDao")
public class QnaDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertQna(Qna q) {
		return sqlSession.insert("QnaMapper.insertQna",q);
	}

	public ArrayList<Qna> selectQnaList(String userId) {
		return (ArrayList)sqlSession.selectList("QnaMapper.qnaList",userId);
	}

	public ArrayList<Qna> selectQnaList(PageInfo pi,String userId) {
		int offset=(pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds=new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("QnaMapper.qnaList2",userId,rowBounds);
	}

	public ArrayList<QnaReply> selectQrList(int qId) {
		return (ArrayList)sqlSession.selectList("QnaMapper.qRlist",qId);
	}

}
