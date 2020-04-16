package com.ohdogcat.odc.homepage.searchHospital.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.searchHospital.model.dao.searchHospitalDao;
import com.ohdogcat.odc.homepage.searchHospital.model.vo.hospitalSearchCondition;

@Service("shService")
public class searchHospitalServiceImpl implements searchHospitalService {

	@Autowired
	private searchHospitalDao shDao;

	@Override
	public int hospitalListCount(hospitalSearchCondition hs) {
		return shDao.hospitalListCount(hs);
	}

	@Override
	public ArrayList<HMember> hospitalSearchList(PageInfo pi, hospitalSearchCondition hs) {
		return shDao.hospitalSearchList(pi,hs);
	}
}
