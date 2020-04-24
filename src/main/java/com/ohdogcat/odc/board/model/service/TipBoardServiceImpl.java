package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.Dao.BoardDao;
import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.board.model.vo.TipReply;

@Service
public class TipBoardServiceImpl implements TipBoardService{

	@Autowired
	private BoardDao bDao;

	@Override
	public int DogBoardListCount(Map<String, String> Dmap) {
		
		return bDao.DogBoardListCount(Dmap);
	}

	@Override
	public ArrayList<TipBoard> DogBoardList(Map<String, String> Dmap, PageInfo pi) {
		
		return bDao.DogBoardList(Dmap,pi);
	}
	
	
}
