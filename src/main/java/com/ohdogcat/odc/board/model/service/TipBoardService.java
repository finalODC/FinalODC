package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.board.model.vo.TipReply;

public interface TipBoardService {

	// 게시판 뷰 카운트
	int DogBoardListCount(Map<String, String> Dmap);
	
	//게시판 리스트
	ArrayList<TipBoard> DogBoardList(Map<String,String> Dmap, PageInfo pi);
	
	//게시판 자세히보기
	TipBoard DogBoardView(int tbId);
	
	//게시판 글쓰기 
	int DogBoardWriter(TipBoard tb);
	
	//게시판 리플쓰기
	int DogBoardReply(TipReply tr);
	
	//게시판 리플 불러오기
	ArrayList<TipReply> DogBoardReplyList(int tbId); 
	
	//게시판 수정 페이지가기
	
	TipBoard DogBoardUpdateView(int tbId);
	
	// 게시판 수정하기
	int DogBoardUpdate(TipBoard tb);
	
	// 게시판 삭제하기
	
	int DogBoardDelete(int tbId);
	
	// -----------------------ㅇㅕ 기 서부터는 catBoard 입니다.----------------------
	
	int CatBoardListCount(Map<String,String>Cmap);
	
	ArrayList<TipBoard> CatBoardList(Map<String,String>Cmap,PageInfo pi);
}
