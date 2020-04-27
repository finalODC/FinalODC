package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.hospital.model.dao.HospitalDao;
import com.ohdogcat.odc.hospital.model.vo.Diagnosis;
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

	@Override
	public ArrayList<Diagnosis> searchDiag(String pCode, PageInfo pi) {
		return hoDao.searchDiag(pCode,pi);
	}

	@Override
	public int getListCount(String pCode) {
		return hoDao.getListCount(pCode);
	}

	@Override
	public int getDiagList(String pCode) {
		return hoDao.getDiagList(pCode);
	}

	@Override
	public ArrayList<Diagnosis> diagList(String pCode, PageInfo pi) {
		return hoDao.diagList(pCode,pi);
	}

	@Override
	public int updateWeight(Pet p) {
		return hoDao.updateWeight(p);
	}

	@Override
	public int updateDiag(Diagnosis diag) {
		return hoDao.updateDiag(diag);
	}

	@Override
	public Diagnosis viewContent(int dId) {
		return hoDao.viewContent(dId);
	}



	

	
	
}
