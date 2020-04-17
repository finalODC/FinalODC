package com.ohdogcat.odc.qna.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.qna.model.dao.QnaDao;
import com.ohdogcat.odc.qna.model.vo.Qna;

@Service("qService")
public class QnaServiceImpl implements QnaService{
	@Autowired
	private QnaDao qDao;

	@Override
	public int insertQna(Qna q) {
		return qDao.insertQna(q);
	}

	@Override
	public ArrayList<Qna> selectQnaList(String userId) {
		return qDao.selectQnaList(userId);
	}
}
