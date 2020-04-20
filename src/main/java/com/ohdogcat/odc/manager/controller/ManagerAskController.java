package com.ohdogcat.odc.manager.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.common.Pagination;
import com.ohdogcat.odc.manager.model.service.ManagerAskService;
import com.ohdogcat.odc.qna.model.vo.Qna;
import com.ohdogcat.odc.qna.model.vo.QnaReply;
@Controller
public class ManagerAskController {
	
	@Autowired
	private ManagerAskService mAService;
	
	@RequestMapping("mAsk.ma")
	public String managerAsk(Model m,@RequestParam(value ="currentPage", required=false,defaultValue="1")int currentPage) {
		m.addAttribute("currentPage", currentPage);
		
		return "managerAsk";
	}
	
	
	@RequestMapping("mAskAjax.ma")
	public void managerAskAjax(ModelAndView mv,int currentPage,
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
	public ModelAndView managerReadAsk(ModelAndView mv, int qId, int currentPage) {
		
		Qna qna = mAService.getQna(qId);
		mv.addObject("qna",qna);
		mv.addObject("currentPage",currentPage);
		mv.setViewName("askread");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("insertQnaRe.ma")
	public String insertAnswer(QnaReply qr) {
		
		Integer result =  mAService.insertAnswer(qr);
		
		return result.toString();
	}
	
	@ResponseBody
	@RequestMapping("deleteQnaRe.ma")
	public String deleteAnswer(int qId) {
		Integer result =  mAService.deleteAnswer(qId);
		return result.toString();
	}
}
