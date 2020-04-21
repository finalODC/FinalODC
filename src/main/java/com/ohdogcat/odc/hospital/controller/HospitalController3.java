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
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.board.model.vo.PageInfo;

import com.ohdogcat.odc.common.Pagination2;
import com.ohdogcat.odc.hospital.model.service.HospitalService3;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Controller
public class HospitalController3 {

	@Autowired
	private HospitalService3 hService3;

	@RequestMapping("getcomment.ho")
	public void getHComment(HttpServletResponse response,int hId ,@RequestParam(value="currentPage", required=false, defaultValue="0")int currentPage) throws JsonIOException, IOException {
		System.out.println("hId"+hId);
		
		int listCount = hService3.getListCount(hId);
		
		System.out.println("listCount"+listCount);
		PageInfo pi = Pagination2.getPageInfo(currentPage, listCount);
		
		
		ArrayList<hoReply> re = hService3.getList(hId, pi);
		
		System.out.println(re);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		response.setContentType("application/json; charset=UTF-8");
		Map hMap = new HashMap();
		
		hMap.put("list", re);
		hMap.put("pi", pi);
		
		gson.toJson(hMap,response.getWriter());
		
	}
	@ResponseBody
	@RequestMapping("delhreply.ho")
	public String delHReply(int rId) {
		Integer result = hService3.delHReply(rId); 
		return result.toString();
	}
	
	@ResponseBody
	@RequestMapping("insertRe.ho")
	public String insertRe(hoReply ho) {
		Integer result = hService3.insertRe(ho);
		return result.toString();
	}

	

}