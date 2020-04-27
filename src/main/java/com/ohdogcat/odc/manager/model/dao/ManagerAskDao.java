package com.ohdogcat.odc.manager.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.qna.model.vo.Qna;
import com.ohdogcat.odc.qna.model.vo.QnaReply;

@Repository("mADao")
public class ManagerAskDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount(int check) {
		
		return sqlSession.selectOne("managerAskMapper.getListcount",check);
	}

	public ArrayList<Qna> getQnaList(int check, PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) *pi.getBoardLimit();

		RowBounds rw = new RowBounds(offset,pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("managerAskMapper.getList",check,rw);
	}

	public Qna getQnd(int qId) {
		
		return sqlSession.selectOne("managerAskMapper.getQna",qId);
	}

	public Integer insertAnswer(QnaReply qr) {
		// TODO Auto-generated method stub
		return sqlSession.insert("managerAskMapper.insertAnswer",qr);
	}

	public Integer deleteAnswer(int qId) {
		
		return sqlSession.update("managerAskMapper.deleteAnswer",qId);
	}

}
