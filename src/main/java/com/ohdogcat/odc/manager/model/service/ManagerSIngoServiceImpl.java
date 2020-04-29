package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;
import java.util.Map;

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
	@Override
	public FreeBoard getFDetail(int bId) {
		
		return mSingoDao.getFDetail(bId);
	}
	@Override
	public TipBoard getTDetail(int bId) {
		// TODO Auto-generated method stub
		return mSingoDao.getTDetail(bId);
	}
	@Override
	public Integer singoReset(Map map) {
		// TODO Auto-generated method stub
		return mSingoDao.singoReset(map);
	}
	@Override
	public Integer singoDel(Map map) {
		// TODO Auto-generated method stub
		return mSingoDao.singoDel(map);
	}
	@Override
	public Integer singoFResetall(Map bid) {
		
		return mSingoDao.singoFResetall(bid);
	}
	@Override
	public Integer singoTResetall(Map bid) {
		// TODO Auto-generated method stub
		return mSingoDao.singoTResetall(bid);
	}
	@Override
	public Integer singoFDelall(Map bid) {
		// TODO Auto-generated method stub
		return mSingoDao.singoFDelall(bid);
	}
	@Override
	public Integer singoTDelall(Map bid) {
		// TODO Auto-generated method stub
		return  mSingoDao.singoTDelall(bid);
	}

}
