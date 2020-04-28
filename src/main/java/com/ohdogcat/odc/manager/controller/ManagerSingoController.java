package com.ohdogcat.odc.manager.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.common.Pagination;
import com.ohdogcat.odc.manager.model.service.ManagerSingoService;

@Controller
public class ManagerSingoController {
	
	@Autowired
	ManagerSingoService mSingoService;
	/**
	 * 팁게시판
	 * 
	 * @return
	 */
	@RequestMapping("singo.ma")
	public ModelAndView managerTipBoard(ModelAndView mv, @RequestParam(value="currentPage", required=false,defaultValue="1" )int currentPage, int bStatus) {
		
		if(bStatus ==0) {
		int listCount  = mSingoService.getFlistCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
			ArrayList<FreeBoard> list = mSingoService.getFList(pi);
			mv.addObject("list",list);
			mv.addObject("pi",pi);
		}else {
			int listCount  = mSingoService.getTlistCount();
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			ArrayList<TipBoard> list = mSingoService.getTList(pi);
			mv.addObject("list",list);
			mv.addObject("pi",pi);
		}
		
		mv.addObject("bStatus",bStatus);
		mv.setViewName("managerBoard");
		return mv;
	}
}
