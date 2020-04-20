package com.ohdogcat.odc.manager.Notice.controller;

import java.io.IOException;
import java.util.ArrayList;

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
import com.ohdogcat.odc.manager.Notice.model.vo.Notice;
import com.ohdogcat.odc.manager.Notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService nService;
	
	@RequestMapping("writenotice.do")
	public String writenotice(Notice n) {
		
		System.out.println(n);
		nService.writenotice(n);
		
		return "manager/managerNotice";
	}
	
	@RequestMapping("gonoticewrtie.do")
	public String gonoticewritr() {
		
		return "manager/noticeWrite";
	}
	
	@RequestMapping("getNoticeList.do")
	public void getNoticeList(HttpServletResponse response,
			 @RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage) throws JsonIOException, IOException {
		
		
		int listCount = nService.NoticeListCount();
		System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.getNoticeList(pi);
		
		System.out.println(list);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		

		gson.toJson(list,response.getWriter());
		
	}

}
