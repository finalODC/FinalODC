package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;

public interface ManagerSingoService {

	int getFlistCount();
	int getTlistCount();

	ArrayList<FreeBoard> getFList(PageInfo pi);

	ArrayList<TipBoard> getTList(PageInfo pi);

}
