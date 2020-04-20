package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.qna.model.vo.Qna;
import com.ohdogcat.odc.qna.model.vo.QnaReply;

public interface ManagerAskService {

	int getListCount();

	ArrayList<Qna> getQnaList(PageInfo pi);

	Qna getQna(int qId);

	Integer insertAnswer(QnaReply qr);

	Integer deleteAnswer(int qId);

}
