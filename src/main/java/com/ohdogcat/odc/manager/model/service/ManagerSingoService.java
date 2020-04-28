package com.ohdogcat.odc.manager.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;

public interface ManagerSingoService {

	int getFlistCount();
	int getTlistCount();

	ArrayList<FreeBoard> getFList(PageInfo pi);

	ArrayList<TipBoard> getTList(PageInfo pi);
	
	FreeBoard getFDetail(int bId);
	
	TipBoard getTDetail(int bId);
	
	Integer singoReset(Map map);
	
	Integer singoDel(Map map);
	
	Integer singoFResetall(Map bid);
	Integer singoTResetall(Map bid);
	
	Integer singoFDelall(Map bid);
	Integer singoTDelall(Map bid);

}
