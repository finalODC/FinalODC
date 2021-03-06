package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.FreeReply;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.board.model.vo.TipReply;

public interface BoardService {

	/**
	 * 1-1
	 * 프리보드 게시판 수 가져오기
	 * @param map 
	 * @return
	 */
	int getFreeListCount(Map<String, String> map);
	
	/**
	 * 1-2
	 * 프리보드 게시판 리스트 조회
	 * @param map 
	 * @param pi
	 * @return
	 */
	 ArrayList<FreeBoard> selectFreeList(Map<String,String> map, PageInfo pi); 
	
//	ArrayList<FreeBoard> selectFreeList( PageInfo pi);
	
	/**
	 * 게시판 작성
	 * @param fb
	 * @return
	 */
	int FreeBoardInsert(FreeBoard fb);
	

	/**
	 * 게시판 상세 보기
	 * @param fbId
	 * @return
	 */
	FreeBoard selectFreeBoard(int fbId);
	
	
	
	/**
	 * 댓글 입력
	 * @param fr
	 * @return
	 */
	int insertFreeReply(FreeReply fr);
	
	/**
	 * 댓글 리스트 불러오기
	 * @param bId
	 * @return
	 */
	ArrayList<FreeReply> selectFreeReplyList(int fbId);
	
	/**
	 * 검색 리스트 불러오기
	 * @param bs
	 * @return
	 */
	
	
	/**
	 * 
	 * 게시판 수정 페이지 가기
	 * @param fbId
	 * @return
	 */
	FreeBoard FreeBoardUpdateView(int fbId);
	
	int FreeBoardUpdate(FreeBoard fb);
	
	
	/**
	 * 게시판 삭제
	 * @param fbId
	 * @return
	 */
	int FreeBoardDelete(int fbId);
	
	int FreeBoardSearchCount(int fbId);

	int FreeBoardComplain(FreeBoard fb);
	

	
}
