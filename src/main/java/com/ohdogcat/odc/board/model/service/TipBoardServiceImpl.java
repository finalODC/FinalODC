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
	//글쓰기 
	@Override
	public int DogBoardWriter(TipBoard tb) {
		
		return bDao.DogBoardWriter(tb);
	}

	@Override
	public TipBoard DogBoardView(int tbId) {

		int result = bDao.DogBoardViewCount(tbId);
		
		System.out.println("서비스 result : " + result);
		
		if(result > 0) {
			return  bDao.DogBoardView(tbId);
			
		}else {
			return null;
		}
		
	}

	//댓글쓰기
	@Override
	public int DogBoardReply(TipReply tr) {

		return bDao.DogBoardReply(tr);
	}
	//댓글 불러오기
	@Override
	public ArrayList<TipReply> DogBoardReplyList(int tbId) {

		return bDao.DogBoardReplyList(tbId);
	}

	//수정페이지 가기
	@Override
	public TipBoard DogBoardUpdateView(int tbId) {
		
		return bDao.DogBoardUpdateView(tbId);
	}
	// 수정
	@Override
	public int DogBoardUpdate(TipBoard tb) {
		// TODO Auto-generated method stub
		return bDao.DogBoardUpdate(tb);
	}
	//삭제
	@Override
	public int DogBoardDelete(int tbId) {
	
		return bDao.DogBoardDelete(tbId);
	}
//----------------------------------- 여기서부터 cat board ---------------------------
	
	@Override
	public int CatBoardListCount(Map<String, String> Cmap) {
		
		return bDao.CatBoardListCount(Cmap);
	}

	@Override
	public ArrayList<TipBoard> CatBoardList(Map<String, String> Cmap, PageInfo pi) {
		
		return bDao.CatBoardList(Cmap,pi);
	}

	//게시판 작성
	@Override
	public int CatBoardWriter(TipBoard tb) {
		
		return bDao.CatBoardWriter(tb);
	}

	//게시판 상세보기
	
	@Override
	public TipBoard CatBoardView(int tbId) {

		return bDao.CatBoardView(tbId);
	}

	
	//게시판 수정페이지 가기
	@Override
	public TipBoard CatBoardUpdateView(int tbId) {

		return bDao.CatBoardUpdateView(tbId);
	}

	//게시판 수정하기
	@Override
	public int CatBoardUpdate(TipBoard tb) {
		
		return bDao.CatBoardUpdate(tb);
	}
	//게시판 삭제

	@Override
	public int CatBoardDelete(int tbId) {

		return bDao.CatBoardDelete(tbId);
	}

	@Override
	public int CatBoardReply(TipReply tr) {

		return bDao.CatBoardReply(tr);
	}
	
	
	
	
}
