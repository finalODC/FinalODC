package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.Dao.BoardDao;
import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;

@Service("bService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao bDao;

	@Override
	public int getFreeListCount() {
		
		return bDao.FreeListCount();
	}

	@Override
	public ArrayList<FreeBoard> selectFreeList(PageInfo pi) {
		
		return bDao.selectFreeList(pi);
	}

	@Override
	public int FreeBoardInsert(FreeBoard fb) {
		
		return bDao.FreeBoardInsert(fb);
	}

	@Override
	public FreeBoard selectFreeBoard(int fbId) {
		
		int result = bDao.updateCount(fbId); //조회수 증가용
		
		if(result >0) {
			
			return bDao.selectFreeBoard(fbId);
		}else {
			return null;
		}
	}

	
	
	
}
