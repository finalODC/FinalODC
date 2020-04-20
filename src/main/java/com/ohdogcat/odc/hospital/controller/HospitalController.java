package com.ohdogcat.odc.hospital.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.common.Pagination;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.model.vo.Member;
import com.ohdogcat.odc.hospital.model.service.HospitalService;
import com.ohdogcat.odc.hospital.model.vo.Diagnosis;
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
	
	@RequestMapping("mainpage.do")
	public String goMain() {
		return "homepage/h_mainpage";
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
	
	
	@RequestMapping("petinfo.do")
	public void petInfo(String pCode, HttpServletResponse response) throws JsonIOException, IOException {
		
		Pet p = new Pet();
		
		p = hoService.petInfo(pCode);
		System.out.println(p);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(p, response.getWriter());
		
	}
	
	
	@RequestMapping("memberinfo.do")
	public void memberInfo(String phone,  HttpServletResponse response) throws JsonIOException, IOException {
		
		Member m = new Member();
		
		m = hoService.memberInfo(phone);
		System.out.println(m);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(m, response.getWriter());
		
	}
	
	@RequestMapping("searchdiag.do")
	public void searchDiag(@RequestParam(value ="currentPage", defaultValue="1")int currentPage,String pCode, HttpServletResponse response) throws JsonIOException, IOException {
		System.out.println(pCode);
		int listCount = hoService.getListCount(pCode);
		System.out.println(listCount);
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Diagnosis> list = hoService.searchDiag(pCode,pi);
		
		Map hm = new HashMap();
		hm.put("list", list);
		hm.put("pi",pi);
		
		System.out.println(list);
		
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(hm,response.getWriter());
		
		
		
		

		
	}
	
	
	
	
	
	
	
	
	
	
	
}
