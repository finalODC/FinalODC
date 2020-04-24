package com.ohdogcat.odc.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ohdogcat.odc.board.model.service.TipBoardService;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.common.Pagination;

@Controller
public class TipBoardController {

	@Autowired
	private TipBoardService tbService;
	
//	@RequestMapping("tboardgo.bo")
//	public String TipBoardGo() {
//		return "BoardPageFree";
//	}

//	@RequestMapping("DBlist.bo")
//	public ModelAndView DogBoardList(ModelAndView mv,
//			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
//
//		int listCount = bService.DogBoardCount();
//
//		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
//
//		System.out.println("listCount" + listCount);
//
//		ArrayList<TipBoard> DBlist = bService.DogBoardList(pi);
//
//		mv.addObject("list", DBlist);
//		mv.addObject("pi", pi);
//		mv.setViewName("BoardPageDog");
//
//		System.out.println(pi);
//		System.out.println(DBlist);
//		return mv;
//	}
//
//	/**
//	 * 글쓰기 버튼 클릭시 BoardWriter로 보내버리는 코드 
//	 * @return
//	 */
//	@RequestMapping("insertDogBoard.bo")
//	public String BoardWriterView() {
//
//		return "BoardPageDogWriter";
//	}
//	
//	
//	@RequestMapping("DogBoardWriter.bo")
//	public String DogBoardWriter(TipBoard tb) {
//		//HttpServletRequest 이란 홈페이지에서 받은 값을 서블렛으로 보내주는 메소드 
//		//RequestMapping 있을경우에는 굳이 안써도 된다.
//		// 
//		
//		int result = bService.DogBoardWriter(tb);
//		
//		if(result > 0) {
//			return "redirect:DBlist.bo";
//		}else {
//			return "";
//		}
//	}
//	
//	@RequestMapping("DogBoardView.bo")
//	public ModelAndView DogBoardView(ModelAndView mv,int tbId,
//			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
//		
//		TipBoard tb = bService.DogBoardView(tbId);
//		
//		if(tb != null) {
//			mv.addObject("tb",tb);
//			mv.addObject("currentPage",currentPage);
//			mv.setViewName("BoardPageDogView");
//		}else {
//			
//		}
//		return mv;
//	}
//
//	@RequestMapping("DogBoardAddReply.bo")
//	@ResponseBody
//	public String DogBoardReply(TipReply tr) {
//		
//		int result = bService.DogBoardReply(tr);
//		
//		if(result > 0) {
//			return "success";
//		}else {
//			return "fail";
//		}
//	}
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	@RequestMapping("DBlist.bo")
	public ModelAndView DogBoardList(ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage,
			@RequestParam(value="dsearchkey",required=false)String dsearchkey,
			@RequestParam(value="dsearch",required=false)String dsearch) {
		Map<String, String> Dmap = new HashMap<String, String>();
		Dmap.put("dsearchkey",dsearchkey);
		Dmap.put("search",dsearch);
		
		int listCount = tbService.DogBoardListCount(Dmap);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<TipBoard> TBlist = tbService.DogBoardList(Dmap, pi);
		
		mv.addObject("dsearchkey",dsearchkey);
		mv.addObject("dsearch",dsearch);
		mv.addObject("list",TBlist);
		mv.addObject("pi",pi);
		mv.setViewName("BoardPageDog");
		
		return mv;
	}

}
