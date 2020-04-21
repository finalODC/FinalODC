package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.hospital.model.vo.hoReply;


public interface HospitalService3 {

	int getListCount(int hId);

	ArrayList<hoReply> getList(int hId, PageInfo pi);

	Integer delHReply(int rId);

	Integer insertRe(hoReply ho);

	
}
