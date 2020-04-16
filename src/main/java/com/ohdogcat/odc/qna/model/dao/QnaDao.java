package com.ohdogcat.odc.qna.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.qna.model.vo.Qna;

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

}
