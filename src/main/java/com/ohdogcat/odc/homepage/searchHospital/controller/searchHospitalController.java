package com.ohdogcat.odc.homepage.searchHospital.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.searchHospital.model.vo.hPagination;
import com.ohdogcat.odc.homepage.searchHospital.model.vo.hospitalSearchCondition;
import com.ohdogcat.odc.homepage.searchHospital.service.searchHospitalService;

@Controller
public class searchHospitalController {
	@Autowired
	private searchHospitalService shService;
	
	@RequestMapping("searchhospital.do")
	public ModelAndView searchHospital(@RequestParam(required=false) String searchkey,
									   @RequestParam(required=false)String searchval,
									   ModelAndView mv) {
		
		mv.addObject("searchkey", searchkey);
		mv.addObject("searchval",searchval);
		mv.setViewName("homepage/searchHospital");
		
		return mv;
	}
	
	@RequestMapping("searchHospitalList.do")
	public void searchHospitalList(HttpServletResponse response,
								   @RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage,
								   @RequestParam String searchkey,
								   @RequestParam String searchval) throws JsonIOException, IOException {
		
		hospitalSearchCondition hs =  new hospitalSearchCondition();
		
		if(searchkey.equals("name")) {
			hs.setsName(searchval);
		}else if(searchkey.equals("area")) {
			hs.setsArea(searchval);
		}
		
		
		int listCount = shService.hospitalListCount(hs);
		
		PageInfo pi = hPagination.getPageInfo(currentPage, listCount);
		
		ArrayList<HMember> list = shService.hospitalSearchList(pi,hs);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		gson.toJson(list,response.getWriter());
	
		
	}
	
	@RequestMapping("hspageInfo.do")
	public void hspageInfo(HttpServletResponse response,
			@RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage,
			@RequestParam String searchkey,
			@RequestParam String searchval) throws JsonIOException, IOException {
	hospitalSearchCondition hs =  new hospitalSearchCondition();
		
		if(searchkey.equals("name")) {
			hs.setsName(searchval);
		}else if(searchkey.equals("area")) {
			hs.setsArea(searchval);
		}
		
		int listCount = shService.hospitalListCount(hs);
		
		PageInfo pi = hPagination.getPageInfo(currentPage, listCount);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		gson.toJson(pi,response.getWriter());
		
	}
	
	@RequestMapping("hosdetail.do")
	public ModelAndView hosdetail(ModelAndView mv,@RequestParam int hId) {

		HMember hm = shService.gethospital(hId);
		
		mv.addObject("hm",hm);
		mv.setViewName("/homepage/inserthospital");
		
		return mv;
	}

}
