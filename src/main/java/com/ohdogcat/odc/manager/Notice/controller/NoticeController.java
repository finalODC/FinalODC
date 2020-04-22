package com.ohdogcat.odc.manager.Notice.controller;

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
import com.ohdogcat.odc.manager.Notice.model.vo.Notice;
import com.ohdogcat.odc.manager.Notice.model.vo.NoticeSearchCondition;
import com.ohdogcat.odc.manager.Notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService nService;
	
	@RequestMapping("writenotice.do")
	public String writenotice(Notice n) {

		nService.writenotice(n);
		
		return "manager/managerNotice";
	}
	
	@RequestMapping("gonoticewrtie.do")
	public String gonoticewritr() {
		
		return "manager/noticeWrite";
	}
	
	@RequestMapping("gonoticelist.do")
	public String gonoticelist() {
		
		return "manager/managerNotice";
	}
	
	@RequestMapping("hgonoticelist.do")
	public String hgonoticelist() {
		return "homepage/h_notice";
	}
	
	@RequestMapping("getNoticeList.do")
	public void getNoticeList(HttpServletResponse response,
			 @RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage) throws JsonIOException, IOException {
		
		
		int listCount = nService.NoticeListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.getNoticeList(pi);
		
	
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		

		gson.toJson(list,response.getWriter());
		
	}
	
	@RequestMapping("npageInfo")
	public void npageInfo(HttpServletResponse response,
			@RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage) throws JsonIOException, IOException {
		
		int listCount = nService.NoticeListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		gson.toJson(pi,response.getWriter());
		
	}
	
	@RequestMapping("NoticeDetail.do")
	public ModelAndView NoticeDetail(ModelAndView mv ,@RequestParam int nId) {
		
		Notice n = nService.NoticeDetail(nId);
		
		mv.addObject("n", n);
		mv.setViewName("manager/noticeRead");
		return mv;
		
	}
	
	@RequestMapping("deletenotice.do")
	public String deleteNotice(@RequestParam int nId) {
		
		int result = nService.deleteNotice(nId);
		
		return "manager/managerNotice";
	}
	
	@RequestMapping("gonoticeupdate.do")
	public ModelAndView goNoticeUpdate(ModelAndView mv ,@RequestParam int nId) {
		Notice n = nService.NoticeDetail(nId);
		mv.addObject("n", n);
		mv.setViewName("manager/noticeRewrite");
		return mv;
	}
	
	@RequestMapping("noticeUpdate.do")
	public ModelAndView NoticeUpdate(ModelAndView mv,Notice n) {
		
		int result=nService.NoticeUpdate(n);
		
		Notice updateN = nService.NoticeDetail(n.getnId());
		
		mv.addObject("n", updateN);
		mv.setViewName("manager/noticeRead");
		return mv;
	}
	
	@RequestMapping("homenoticedetail.do")
	public ModelAndView homenoticedetail(ModelAndView mv ,@RequestParam int nId) {
		
		
		Notice n = nService.NoticeDetail(nId);
		System.out.println(n);
		mv.addObject("n", n);
		mv.setViewName("homepage/h_noticeRead");
		return mv;
		
	}
	
	@RequestMapping("homebacknotice.do")
	public String homebacknotice() {
		
		return "homepage/h_notice";
	}
	
	@RequestMapping("homegetNoticeList.do")
	public void homegetNoticeList(HttpServletResponse response,
			 @RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage,
			 @RequestParam String searchkey,
			 @RequestParam String searchval) throws JsonIOException, IOException {
		
		
		NoticeSearchCondition ns = new NoticeSearchCondition();
		
		if(searchkey.contentEquals("title")) {
			ns.setsTitle(searchval);
		}else if(searchkey.equals("content")) {
			ns.setsContent(searchval);
		}
		
		int listCount = nService.homeNoticeListCount(ns);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.homeNoticeList(pi,ns);
	
		
		response.setContentType("application/json; charset=utf-8");
		  
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		 
		gson.toJson(list,response.getWriter());

	}
	
	@RequestMapping("searchPageInfo.do")
	public void searchPageInfo(
			HttpServletResponse response,
			 @RequestParam(value="currentPage", required=false,defaultValue ="1") int currentPage,
			 @RequestParam String searchkey,
			 @RequestParam String searchval) throws JsonIOException, IOException {
		
		NoticeSearchCondition ns = new NoticeSearchCondition();
		
		if(searchkey.contentEquals("title")) {
			ns.setsTitle(searchval);
		}else if(searchkey.equals("content")) {
			ns.setsContent(searchval);
		}
		
		int listCount = nService.homeNoticeListCount(ns);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		response.setContentType("application/json; charset=utf-8");
		  
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		 
		gson.toJson(pi,response.getWriter());
	}

}

























