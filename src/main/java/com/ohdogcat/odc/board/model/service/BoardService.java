package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;

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
	
}
