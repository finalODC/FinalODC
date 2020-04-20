package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.FreeReply;

public interface BoardService {

	/**
	 * 1-1
	 * 프리보드 게시판 수 가져오기
	 * @return
	 */
	int getFreeListCount();
	
	/**
	 * 1-2
	 * 프리보드 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<FreeBoard> selectFreeList(PageInfo pi);
	
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
	 * 댓글상세보기
	 * @param frId
	 * @return
	 */
	
	int insertFreeReply(FreeReply fr);
	
}
