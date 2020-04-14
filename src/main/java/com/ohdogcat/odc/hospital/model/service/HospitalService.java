package com.ohdogcat.odc.hospital.model.service;

import java.util.ArrayList;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.vo.hoReply;


public interface HospitalService {

	ArrayList<HMember> doctorList(String hId);



}
