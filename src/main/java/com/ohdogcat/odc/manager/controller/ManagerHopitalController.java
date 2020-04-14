package com.ohdogcat.odc.manager.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.common.Pagination;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.manager.Membermanage.model.vo.SearchHmember;
import com.ohdogcat.odc.manager.model.dao.ManagerHospitalService;

@Controller
public class ManagerHopitalController {
	
	@Autowired
	ManagerHospitalService mHService;

	/**
	 * 최초접속
	 * @param mv
	 * @return
	 */
	@RequestMapping("mHmember.ma")
	public ModelAndView HospitalMember(ModelAndView mv) {
		SearchHmember sHm = new SearchHmember(1, null);
		int listCount = mHService.gethMListCount(sHm);
		
		PageInfo pi = Pagination.getPageInfo(1, listCount);
		ArrayList<HMember> list = mHService.gethMemberList(sHm,pi);
		
		mv.addObject("list",list);
		mv.addObject("pi", pi);
		mv.setViewName("managerHospital");
		return mv;
	}

	@RequestMapping(value = "hmlistAjax.ma")
	public void HospitalMemberAjax(int currentPage, @RequestParam("category") int i,@RequestParam(value="search", required=false)String b , HttpServletResponse response) throws JsonIOException, IOException {
		SearchHmember sHm = new SearchHmember(i, b);
		
		int listCount = mHService.gethMListCount(sHm);
		
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<HMember> list = mHService.gethMemberList(sHm,pi);
		response.setContentType("application/json; charset=UTF-8");
		Gson gson =new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		//Gson gson = new Gson();
		Map hMap = new HashMap();
		hMap.put("list",list);		
		hMap.put("pi",pi);
		
		
		System.out.println(hMap.get("list"));
		gson.toJson(hMap,response.getWriter());
	}

}
