package com.ohdogcat.odc.qna.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
import com.ohdogcat.odc.qna.model.service.QnaService;
import com.ohdogcat.odc.qna.model.vo.Qna;

@Controller
public class QnaController {
	@Autowired
	private QnaService qService;

	@RequestMapping("insertQNA.qn")
	public ModelAndView insertQNA(ModelAndView mv,Qna q) {
		System.out.println(q);
		int result=qService.insertQna(q);
		
		mv=qnaPage(mv,1);
		return mv;
	}

	/*
	 * @RequestMapping("myqnalist.qn") public void qnaList(HttpServletResponse
	 * response,@RequestParam String userId) throws JsonIOException, IOException {
	 * System.out.println(userId); ArrayList<Qna>
	 * list=qService.selectQnaList(userId);
	 * response.setContentType("application/json; charset=utf-8");
	 * 
	 * PageInfo pi = Pagination.getPageInfo(1, 10);
	 * 
	 * Map notice = new HashMap();
	 * 
	 * notice.put("list", list); notice.put("pi", pi);
	 * 
	 * Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	 * gson.toJson(notice,response.getWriter()); }
	 */
	@RequestMapping("myqnalist.qn")
	public ModelAndView qnaPage(
			ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
			mv.addObject("currentPage",currentPage);
			System.out.println(currentPage);
			mv.setViewName("myPageQNA");
		return mv;
	}
	
	@RequestMapping("qlistView.qn")
	public void boardList(HttpServletResponse response,@RequestParam String userId
			, @RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) throws JsonIOException, IOException {
		
		System.out.println(currentPage);
		
		int listCount = qService.selectQnaList(userId).size();
		
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage,listCount);
		ArrayList<Qna> list = qService.selectQnaList(pi,userId);
		System.out.println(list.get(0).getQnaRe());
		Map hmap = new HashMap();
		
		hmap.put("list", list);
		hmap.put("pi",pi);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(hmap,response.getWriter());
	}
	
	/*
	 * @RequestMapping("qdetail.qn") public void qDetail(HttpServletResponse
	 * response,@RequestParam int qId) throws JsonIOException, IOException {
	 * System.out.println(qId); Qna q=qService.selectQna(qId);
	 * System.out.println(q);
	 * response.setContentType("application/json; charset=utf-8");
	 * 
	 * Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	 * gson.toJson(q,response.getWriter());
	 * 
	 * }
	 */
}
