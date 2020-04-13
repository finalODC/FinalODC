package com.ohdogcat.odc.board.controller;

import java.util.ArrayList;

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
		
		ArrayList<FreeBoard> list = bService.selectFreeList(pi);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("BoardPageFree");
		
		return mv;
	}
	
}
