package com.ohdogcat.odc.manager.model.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.manager.Membermanage.model.vo.SearchHmember;
import com.ohdogcat.odc.manager.model.service.ManagerHospitalDao;

@Service("mHService")
public class ManagerHopitalServiceImpl implements ManagerHospitalService {

	@Autowired
	ManagerHospitalDao mHDao;
	@Override
	public int gethMListCount(SearchHmember sHm) {
		
		return mHDao.gethMListCount(sHm);
	}
	@Override
	public ArrayList<HMember> gethMemberList(SearchHmember sHm ,PageInfo pi) {
		
		return mHDao.gethMemberList(sHm,pi);
	}

}
