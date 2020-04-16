package com.ohdogcat.odc.hospital.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.service.HospitalService;
import com.ohdogcat.odc.pet.model.vo.Pet;

@Controller
public class HospitalController {

	//성근
	
	@Autowired
	private HospitalService hoService;
	
	@RequestMapping("chart.ho")
	public String goChart() {
		
		return "doctorChart";
	}
	

	@RequestMapping("doctorlist.do")
	public void doctorList(int hId, HttpServletResponse response) throws JsonIOException, IOException{
		
		ArrayList<HMember> hm = new ArrayList();
	
		hm = hoService.doctorList(hId);
		System.out.println(hm.toString());
		response.setContentType("application/json; charset=UTF-8");
		
		
		new Gson().toJson(hm,response.getWriter());
	}
	
	
	@RequestMapping("searchPet.do")
	public void searchPet(String phone, HttpServletResponse response) throws JsonIOException, IOException{
		
		ArrayList<Pet> pet = new ArrayList();
		
		pet=hoService.searchPet(phone);
		System.out.println(pet);
		
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(pet, response.getWriter());
	}
	
	
	
	
	
	
	
}
