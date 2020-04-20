package com.ohdogcat.odc.qna.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.qna.model.vo.Qna;
import com.ohdogcat.odc.qna.model.vo.QnaReply;

public interface QnaService {

	int insertQna(Qna q);

	ArrayList<Qna> selectQnaList(String userId);
	
	ArrayList<Qna> selectQnaList(PageInfo pi,String userId);
	
	ArrayList<QnaReply> selectQrList(int qId);
}
