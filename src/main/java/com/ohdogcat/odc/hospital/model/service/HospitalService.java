package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.vo.hoReply;
import com.ohdogcat.odc.pet.model.vo.Pet;


public interface HospitalService {

	ArrayList<HMember> doctorList(int hId);

	ArrayList<Pet> searchPet(String phone);



}
