package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao2;
import com.ohdogcat.odc.hospital.model.vo.hoReply;
import com.ohdogcat.odc.pet.model.vo.Pet;

@Service("hoService")
public class HospitalServiceImpl implements HospitalService{

	@Autowired
	private HospitalDao hoDao;

	@Override
	public ArrayList<HMember> doctorList(int hId) {
		
		
		return hoDao.doctorList(hId);
	}

	@Override
	public ArrayList<Pet> searchPet(String phone) {
		return hoDao.searchPet(phone);
	}

	@Override
	public Pet petInfo(String pCode) {
		return hoDao.petInfo(pCode);
	}

	@Override
	public Member memberInfo(String phone) {
		return hoDao.memberInfo(phone);
	}

	

	
	
}
