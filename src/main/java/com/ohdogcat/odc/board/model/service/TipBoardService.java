package com.ohdogcat.odc.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;

public interface TipBoardService {

	// 게시판 뷰 카운트
	int DogBoardListCount(Map<String, String> Dmap);
	
	
	ArrayList<TipBoard> DogBoardList(Map<String,String> Dmap, PageInfo pi);
}
