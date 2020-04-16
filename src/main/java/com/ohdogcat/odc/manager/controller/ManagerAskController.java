package com.ohdogcat.odc.manager.controller;

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
import com.ohdogcat.odc.manager.model.service.ManagerAskService;
import com.ohdogcat.odc.qna.model.vo.Qna;
@Controller
public class ManagerAskController {
	
	@Autowired
	private ManagerAskService mAService;
	
	@RequestMapping("mAsk.ma")
	public String managerAsk() {
		return "managerAsk";
	}
	
	
	@RequestMapping("mAskAjax.ma")
	public void managerAskAjax(ModelAndView mv,@RequestParam(value ="currentPage", defaultValue="1")int currentPage,
										HttpServletResponse response) throws JsonIOException, IOException {
		int listCount = mAService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Qna> list = mAService.getQnaList(pi);
		
		Map hm = new HashMap();
		hm.put("list", list);
		hm.put("pi",pi);
		response.setContentType("application/json;charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(hm,response.getWriter());
	}
	
	@RequestMapping("askread.ma")
	public ModelAndView managerReadAsk(ModelAndView mv, int qId) {
		
		Qna qna = mAService.getQna(qId);
		mv.addObject("qna",qna);
		mv.setViewName("askread");
		return mv;
	}
}
