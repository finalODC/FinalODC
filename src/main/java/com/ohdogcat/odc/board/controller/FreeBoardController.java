package com.ohdogcat.odc.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.board.model.service.BoardService;
import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.FreeReply;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.common.Pagination;



@Controller
public class FreeBoardController {

	@Autowired
	private BoardService bService;
	
	/**
	 * 게시판 리스트 불러오기
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("Fblist.bo")
	public ModelAndView boardList(ModelAndView mv, 
			 @RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
			//@RequestParam 은 페이징 처리용으로 반드시 필요한거다.
		System.out.println(currentPage);
		
		int listCount = bService.getFreeListCount();
		
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage,listCount);
		
		ArrayList<FreeBoard> FBlist = bService.selectFreeList(pi);
		
		System.out.println("FBlist : " +  FBlist);
		
		mv.addObject("list",FBlist);
		mv.addObject("pi",pi);
		mv.setViewName("BoardPageFree");
		
		return mv;
	}
	
	
	
	
	/**
	 * 게시판 작성하기 뷰
	 * @return
	 */
	@RequestMapping("FBinsertView.bo")
	public String FreeBoardView() {
		return "BoardPageWriter";
	}
	
	
	/**
	 * 게시판 글쓰기 작성
	 * @param fb
	 * @param request
	 * @return
	 */
	@RequestMapping("FBinsert.bo")
	public String FreeBoardInsert(FreeBoard fb,HttpServletRequest request) {
		int result = bService.FreeBoardInsert(fb);
		
		System.out.println("인설트 값 : " + fb);
		if(result > 0) {
			return "redirect:Fblist.bo";
		}else {
			return "";
		}
	}
	
	/**
	 * 게시판 글쓰기 취소 버튼
	 * @return
	 * 
	 */
	@RequestMapping("cencleW.bo")
	public String cencleWrite() {
		System.out.println(">>");
		return "redirect:Fblist.bo";
	}
	
	/**
	 * 게시판 상세보기  페이지 이동
	 * @return
	 */
	
	/*
	 * @RequestMapping("FBview.bo") public String FboardView() {
	 * return"BoardPageView"; }
	 */
	 
	
	@RequestMapping("FBviewDetail.bo")
	public ModelAndView FreeBoardViewDetail(ModelAndView mv,int fbId,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		FreeBoard fb = bService.selectFreeBoard(fbId);
		
		System.out.println("게시글 상세조회 : " +fb);
		System.out.println("mv : " + mv);
		System.out.println("currentPage : " + currentPage);
		if(fb != null) {
			mv.addObject("fb",fb)
			  .addObject("currentPage",currentPage)
			  .setViewName("BoardPageView");
		}else {
			
		}
		return mv;
	}
	
	
	@RequestMapping("addFreeReply.bo")
	@ResponseBody
	public String addFreeReply(FreeReply fr) {
		System.out.println(fr);
		int result = bService.insertFreeReply(fr);
		
		if(result > 0 ) {
			return "success";
			
		}else {
			return "fail";
		}
	}
	
	@RequestMapping("frList.bo")
	public void getFreeReplyList(HttpServletResponse response,int fbId) throws JsonIOException, IOException {
		;
		
		ArrayList<FreeReply> frList = bService.selectFreeReplyList(fbId);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		
		
		gson.toJson(frList,response.getWriter());
	}
	
	
}
