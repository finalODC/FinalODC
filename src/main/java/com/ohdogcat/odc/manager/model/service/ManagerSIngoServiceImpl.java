package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.manager.model.dao.ManagerSingoDao;

@Service("mSingoService")
public class ManagerSIngoServiceImpl implements ManagerSingoService {

	@Autowired
	ManagerSingoDao mSingoDao;
	
	@Override
	public int getFlistCount() {
		
		return mSingoDao.getFlistCount();
	}
	@Override
	public ArrayList<FreeBoard> getFList(PageInfo pi) {
		
		return mSingoDao.getFList(pi);
	}
	@Override
	public int getTlistCount() {
		
		return mSingoDao.getTlistCount();
	}


	@Override
	public ArrayList<TipBoard> getTList(PageInfo pi) {
		// TODO Auto-generated method stub
		return mSingoDao.getTList(pi);
	}

}
