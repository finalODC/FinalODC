package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.manager.model.dao.ManagerAskDao;
import com.ohdogcat.odc.qna.model.vo.Qna;

@Service("mAService")
public class ManagerAskServiceImpl implements ManagerAskService {
	
	@Autowired
	private ManagerAskDao mADao;
	
	@Override
	public int getListCount() {
		
		
		return mADao.getListCount();
	}

	@Override
	public ArrayList<Qna> getQnaList(PageInfo pi) {
		
		return mADao.getQnaList(pi);
	}

	@Override
	public Qna getQna(int qId) {
		
		return mADao.getQnd(qId);
	}

}
