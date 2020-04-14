package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao2;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Service("hoService")
public class HospitalServiceImpl implements HospitalService{

	@Autowired
	private HospitalDao hoDao;

	@Override
	public ArrayList<HMember> doctorList(String hId) {
		
		
		return hoDao.doctorList(hId);
	}

	

	
	
}
