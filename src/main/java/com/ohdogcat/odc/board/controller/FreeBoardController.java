package com.ohdogcat.odc.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ohdogcat.odc.board.model.service.BoardService;
import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.common.Pagination;



@Controller
public class FreeBoardController {

	@Autowired
	private BoardService bService;
	
	@RequestMapping("Fblist.bo")
	public ModelAndView boardList(ModelAndView mv, 
			 @RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
		
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
	
	@RequestMapping("FBinsertView.bo")
	public String FreeBoardView() {
		return "BoardPageWriter";
	}
	
	
	@RequestMapping("FBinsert.bo")
	public String FreeBoardInsert(FreeBoard fb,HttpServletRequest request) {
		int result = bService.FreeBoardInsert(fb);
		
		System.out.println("인설트 값 : " + fb);
		if(result > 0) {
			return "redirect:FBlist.bo";
		}else {
			return "";
		}
	}
}
