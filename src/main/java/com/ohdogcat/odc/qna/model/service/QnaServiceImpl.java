package com.ohdogcat.odc.qna.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.qna.model.dao.QnaDao;
import com.ohdogcat.odc.qna.model.vo.Qna;
import com.ohdogcat.odc.qna.model.vo.QnaReply;

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

	@Override
	public ArrayList<Qna> selectQnaList(PageInfo pi,String userId) {
		return qDao.selectQnaList(pi,userId);
	}

	@Override
	public ArrayList<QnaReply> selectQrList(int qId) {
		
		return qDao.selectQrList(qId);
	}

	@Override
	public Qna selectQna(int qId) {
		return qDao.selectQna(qId);
	}
}
