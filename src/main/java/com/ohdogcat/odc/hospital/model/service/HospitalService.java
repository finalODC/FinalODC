package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.hospital.model.vo.Diagnosis;
import com.ohdogcat.odc.hospital.model.vo.hoReply;
import com.ohdogcat.odc.pet.model.vo.Pet;


public interface HospitalService {

	ArrayList<HMember> doctorList(int hId);

	ArrayList<Pet> searchPet(String phone);

	Pet petInfo(String pCode);

	Member memberInfo(String phone);

	ArrayList<Diagnosis> searchDiag(String pCode, PageInfo pi);

	int getListCount(String pCode);




}
