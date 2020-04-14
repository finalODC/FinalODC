package com.ohdogcat.odc.hospital.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.service.HospitalService;

@Controller
public class HospitalController {

	
	
	@Autowired
	private HospitalService hoService;
	
	@RequestMapping("chart.ho")
	public String goChart() {
		
		return "doctorChart";
	}
	
	@RequestMapping("doctorlist.do")
	public ArrayList<HMember> doctorList(String hId){
		
		ArrayList<HMember> hm = new ArrayList();
		
		hm = hoService.doctorList(hId);
		
		return hm;
	}
	
	
}
