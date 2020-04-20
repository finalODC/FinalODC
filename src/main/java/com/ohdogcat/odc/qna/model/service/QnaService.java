package com.ohdogcat.odc.qna.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.qna.model.vo.Qna;

public interface QnaService {

	int insertQna(Qna q);

	ArrayList<Qna> selectQnaList(String userId);
	
}
