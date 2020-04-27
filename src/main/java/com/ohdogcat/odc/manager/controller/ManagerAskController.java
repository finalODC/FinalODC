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
	
	/**
	 * 문의 페이지가기
	 * @param m
	 * @param check
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("mAsk.ma")
	public String managerAsk(Model m,@RequestParam(value ="check", required=false,defaultValue="0")int check,
			@RequestParam(value ="currentPage", required=false,defaultValue="0")int currentPage) {
		m.addAttribute("check", check);
		m.addAttribute("currentPage",currentPage);
		
		return "managerAsk";
	}
	
	
	/**
	 * 문의 목록 보기
	 * @param currentPage
	 * @param response
	 * @param check
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("mAskAjax.ma")
	public void managerAskAjax(int currentPage,
										HttpServletResponse response, 
										@RequestParam(value="check", required=false,defaultValue="0" )int check) throws JsonIOException, IOException {
		int listCount = mAService.getListCount(check);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Qna> list = mAService.getQnaList(check,pi);
		
		Map hm = new HashMap();
		hm.put("list", list);
		hm.put("pi",pi);
		response.setContentType("application/json;charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(hm,response.getWriter());
	}
	
	@RequestMapping("askread.ma")
	public ModelAndView managerReadAsk(ModelAndView mv, int qId, int currentPage,int check) {
		
		Qna qna = mAService.getQna(qId);
		mv.addObject("qna",qna);
		mv.addObject("currentPage",currentPage);
		mv.addObject("check",check);
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
	
	
	/////병원 덧글용
}
