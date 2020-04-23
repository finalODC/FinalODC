package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.Dao.BoardDao;
import com.ohdogcat.odc.board.model.vo.BoardSearch;
import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.FreeReply;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;

@Service("bService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao bDao;

	@Override
	public int getFreeListCount(Map<String, String> map) {
		
		return bDao.FreeListCount(map);
	}

	@Override
	public ArrayList<FreeBoard> selectFreeList(Map<String,String> map,PageInfo pi) {
		
		return bDao.selectFreeList(map,pi);
	}
	
//	@Override
//	public ArrayList<FreeBoard> selectFreeList(PageInfo pi) {
//		
//		return bDao.selectFreeList(pi);
//	}

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

	@Override
	public int insertFreeReply(FreeReply fr) {
		
		return bDao.insertFreeReply(fr);
	}

	@Override
	public ArrayList<FreeReply> selectFreeReplyList(int fbId) {
		
		return bDao.selectFreeReplyList(fbId);
	}

	

	
	@Override
	public FreeBoard FreeBoardUpdateView(int fbId) {

			System.out.println("fbid : "+  fbId);
		return bDao.FreeBoardUpdateView(fbId);
	}
	
	
	@Override
	public int FreeBoardDelete(int fbId) {
		// TODO Auto-generated method stub
		return bDao.FreeBoardDelete(fbId);
	}
	
	@Override
	public int FreeBoardUpdate(FreeBoard fb) {

		return bDao.FreeBoardUpdate(fb);
	}

	@Override
	public int FreeBoardSearchCount(int fbId) {

		return bDao.FreeBoardSearchCount(fbId);
	}
	//----------------------------------------------- 여기서 부터 dogboard 페이지 -------------------------------------------------
	
	@Override
	public int DogBoardCount() {
		
		return bDao.DogBoardCount();
	}

	@Override
	public ArrayList<TipBoard> DogBoardList(PageInfo pi) {
		// TODO Auto-generated method stub
		return bDao.DogBoardList(pi);
	}

	@Override
	public int DogBoardWriter(TipBoard tb) {
		// TODO Auto-generated method stub
		return bDao.DogBoardWriter(tb);
	}

	@Override
	public TipBoard DogBoardView(int tbId) {

		int result = bDao.DogupdateCount(tbId);
		System.out.println(result);
		if(result > 0) {
			return bDao.DogBoardView(tbId);
		}
		
		return null;
	}








	

	
	
	
}
