package com.ohdogcat.odc.manager.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	
	@RequestMapping("boardread.ma")
	public ModelAndView boardRead(ModelAndView mv,int currentPage, int bStatus, int bId) {
		
		if(bStatus==0) {
			FreeBoard br = mSingoService.getFDetail(bId);
			mv.addObject("br",br);
		}else {
			TipBoard br = mSingoService.getTDetail(bId);
			mv.addObject("br",br);
		}

		mv.addObject("currentPage",currentPage).addObject("bStatus",bStatus).setViewName("managerBoardRead");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("singoReset.ma")
	public String singoReset( int bStatus, int bId) {
		
		Map map = new HashMap();
		
		map.put("bStatus",bStatus);
		map.put("bId",bId);

		Integer result = mSingoService.singoReset(map);

	
		return result.toString();
	}
	
	@ResponseBody
	@RequestMapping("singoDel.ma")
	public String singoDel( int bStatus, int bId) {
		
		Map<String,Integer> map = new HashMap();
		System.out.println(bId);
		map.put("bStatus",bStatus);
		map.put("bId",bId);

		Integer result = mSingoService.singoDel(map);

	
		return result.toString();
	}
	
	
	@ResponseBody
	@RequestMapping("singoResetall.ma")
	public String singoResetall( int bStatus,String arr) {
		Integer result;
		String[] arrs= arr.split(",");
		
		ArrayList bids = new ArrayList();
		for(String str: arrs) {
			int i =Integer.valueOf(str);
			bids.add(i);
		}
		
		Map bid = new HashMap();
		bid.put("bids",bids);

		if(bStatus ==0) {
			result = mSingoService.singoFResetall(bid);
		}else {
			result = mSingoService.singoTResetall(bid);
		}
		
		return result.toString();
	}
	
	@ResponseBody
	@RequestMapping("singoDelall.ma")
	public String singoDelall( int bStatus,String arr) {
		
		Integer result;
		String[] arrs= arr.split(",");
		
		ArrayList bids = new ArrayList();
		for(String str: arrs) {
			int i =Integer.valueOf(str);
			bids.add(i);
		}
		
		Map bid = new HashMap();
		bid.put("bids",bids);
		
		if(bStatus ==0) {
			result = mSingoService.singoFDelall(bid);
		}else {
			result = mSingoService.singoTDelall(bid);
		}
		
		return result.toString();
	}
	
	
	
	
}
