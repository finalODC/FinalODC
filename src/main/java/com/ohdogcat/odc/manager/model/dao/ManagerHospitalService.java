package com.ohdogcat.odc.manager.model.dao;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.manager.Membermanage.model.vo.SearchHmember;

public interface ManagerHospitalService {

	int gethMListCount(SearchHmember sHm);
	
	ArrayList<HMember> gethMemberList(SearchHmember sHm, PageInfo pi);

	

}
