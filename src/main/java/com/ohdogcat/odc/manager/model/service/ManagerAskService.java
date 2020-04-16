package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.qna.model.vo.Qna;

public interface ManagerAskService {

	int getListCount();

	ArrayList<Qna> getQnaList(PageInfo pi);

	Qna getQna(int qId);

}
