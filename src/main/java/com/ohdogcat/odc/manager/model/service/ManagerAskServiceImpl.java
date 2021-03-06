package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.model.dao.ManagerAskDao;
import com.ohdogcat.odc.qna.model.vo.Qna;
import com.ohdogcat.odc.qna.model.vo.QnaReply;

@Service("mAService")
public class ManagerAskServiceImpl implements ManagerAskService {
	
	@Autowired
	private ManagerAskDao mADao;
	
	@Override
	public int getListCount(int check) {
		
		
		return mADao.getListCount(check);
	}

	@Override
	public ArrayList<Qna> getQnaList(int check,PageInfo pi) {
		
		return mADao.getQnaList(check,pi);
	}

	@Override
	public Qna getQna(int qId) {
		
		return mADao.getQnd(qId);
	}

	@Override
	public Integer insertAnswer(QnaReply qr) {
	
		return mADao.insertAnswer(qr);
	}

	@Override
	public Integer deleteAnswer(int qId) {
		
		return mADao.deleteAnswer(qId);
	}

}
