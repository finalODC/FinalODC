package com.ohdogcat.odc.manager.Membermanage.controller;

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
import com.ohdogcat.odc.common.Pagination;
import com.ohdogcat.odc.manager.Membermanage.model.vo.manageMember;
import com.ohdogcat.odc.manager.Membermanage.service.manageMemberService;

@Controller
public class manageMemberController {
	
	@Autowired
	private manageMemberService managemService;
	
	@RequestMapping("mMember.do")
	public void manageMemberList(HttpServletResponse response,
			@RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage) throws JsonIOException, IOException {
		
		int listCount  = managemService.MemberListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<manageMember> list = managemService.manageMemberList(pi);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		
		
		gson.toJson(list,response.getWriter());
		
	}
	
	
	@RequestMapping("getpageInfo.do")
	public void getPageInfo( HttpServletResponse response,
			@RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage) throws JsonIOException, IOException{
		
		int listCount  = managemService.MemberListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().create();
	
		
		gson.toJson(pi,response.getWriter());
	}
	
//	@RequestMapping("mMemberList.do")
//	public ModelAndView mMemberList(ModelAndView mv, @RequestParam(value="currentpage",required=false,defaultValue="1") int currentPage) {
//		
//		int listCount  = managemService.MemberListCount();
//
//		return null;
//		
//	}

}
