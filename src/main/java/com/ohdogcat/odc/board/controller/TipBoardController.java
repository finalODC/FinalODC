package com.ohdogcat.odc.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
import com.ohdogcat.odc.board.model.service.TipBoardService;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.board.model.vo.TipReply;
import com.ohdogcat.odc.common.Pagination;

@Controller
public class TipBoardController {

	@Autowired
	private TipBoardService tbService;
	

	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	@RequestMapping("DBlist.bo")
	public ModelAndView DogBoardList(ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage,
			@RequestParam(value="dsearchkey",required=false)String dsearchkey,
			@RequestParam(value="dsearch",required=false)String dsearch) {
		Map<String, String> Dmap = new HashMap<String, String>();
		Dmap.put("dsearchkey",dsearchkey);
		Dmap.put("dsearch",dsearch);
		
		int listCount = tbService.DogBoardListCount(Dmap);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<TipBoard> TBlist = tbService.DogBoardList(Dmap, pi);
		
		mv.addObject("dsearchkey",dsearchkey);
		mv.addObject("dsearch",dsearch);
		mv.addObject("TBlist",TBlist);
		mv.addObject("pi",pi);
		mv.setViewName("BoardPageDog");
		
		return mv;
	}
	
	
	//캔슬키
	@RequestMapping("DogcencleW.bo")
	public String cencleWrite() {
		System.out.println(">>");
		return "redirect:DBlist.bo";
		}
	
	// 게시판 자세히 보기
	@RequestMapping("DogBoardView.bo")
	public ModelAndView DogBoardView(ModelAndView Dmv,int tbId,
						@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		TipBoard tb = tbService.DogBoardView(tbId);
		
		
		
		System.out.println("tbId :  " + tbId);
		
		
		if(tb != null) {
			Dmv.addObject("db",tb)
			   .addObject("currentPage",currentPage)
			   .setViewName("BoardPageDogView");
		}else {
			
		}
		return Dmv;
	}
	
	

	// 글쓰기 페이지 가기
	@RequestMapping("DogBoardWritergo.bo")
	public String DogBoardWritergo() {
		return "BoardPageDogWriter";
	}
	
	
	// 글쓰기 
	@RequestMapping("DogBoardWriter.bo")
	public String DogBoardWriter(TipBoard tb,HttpServletRequest request) {
		
		int result = tbService.DogBoardWriter(tb);
		
		if(result > 0) {
			return "redirect:DBlist.bo"; 
		}else {
			return "";
		}
		
	}
	
	
	// 댓글쓰기
	@RequestMapping("DogBoardReply.bo")
	@ResponseBody
	public String DogBoardReply(TipReply tr) {
		
		int result = tbService.DogBoardReply(tr);
		
		
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	//댓글 리스트 보기
	@RequestMapping("DogBoardReplyList.bo")
	public void DogBoardReplyList(HttpServletResponse response,int tbId) throws JsonIOException, IOException {
		
		ArrayList<TipReply> trList = tbService.DogBoardReplyList(tbId);
		
		System.out.println("trList = " + trList);
		
		response.setContentType("application/json; charset=utf-8 ");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(trList,response.getWriter());
		
		
	}
	
	// 업테이트 페이지 가기
	@RequestMapping("DogBoardUpdateView.bo")
	public ModelAndView DogBoardUpdateView(ModelAndView Dmv,int tbId) {
		
		Dmv.addObject("db",tbService.DogBoardUpdateView(tbId)).setViewName("BoardPageDogUpdate");
		
		return Dmv;
	}
	 
	//페이지 업데이트
	@RequestMapping("DogBoardUpdate.bo")
	public ModelAndView DogBoardUpdate(ModelAndView Dmv,TipBoard tb) {
		
		int result= tbService.DogBoardUpdate(tb);
		
		if(result > 0) {
			Dmv.addObject("db",tb.getTbId()).setViewName("redirect:DBlist.bo");
		}
		return Dmv;
	}
	
	@RequestMapping("DogBoardDelete.bo")
	public String DogBoardDelete(int tbId,HttpServletRequest request) {
		
		int result = tbService.DogBoardDelete(tbId);
		
		if(result >0) {
			return "redirect:DBlist.bo";
		}else {
			return "";
		}
		
	}
	
}
