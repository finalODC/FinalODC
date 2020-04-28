package com.ohdogcat.odc.qna.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.common.Pagination;
import com.ohdogcat.odc.qna.model.service.QnaService;
import com.ohdogcat.odc.qna.model.vo.Qna;

@Controller
public class QnaController {
	@Autowired
	private QnaService qService;

	@RequestMapping("insertQNA.qn")
	public String insertQNA(Qna q, HttpServletRequest request,  @RequestParam(value="qnaFile",required=false) MultipartFile file) {
		
		String renameFileName = saveFile(file, request);
		if(!file.getOriginalFilename().equals("")) {
			if(renameFileName != null) {
				q.setqFile(renameFileName);
			}

		}
		System.out.println(q);
		int result=qService.insertQna(q);
		

		return "redirect:myqnalist.qn";
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root+"\\qnaFiles";

		File folder = new File(savePath);

		if(!folder.exists()) {
			folder.mkdirs();
		}

		String originFileName = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss");                                

		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()))+originFileName;    

		String renamePath = folder + "\\" + renameFileName;    

		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return renameFileName;
	}
	
	@RequestMapping("myqnalist.qn")
	public ModelAndView qnaPage(
			ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
			mv.addObject("currentPage",currentPage);
			System.out.println(currentPage);
			mv.setViewName("myPageQNA");
		return mv;
	}
	
	@RequestMapping("qlistView.qn")
	public void boardList(HttpServletResponse response,@RequestParam String userId
			, @RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) throws JsonIOException, IOException {
		
		System.out.println(currentPage);
		
		int listCount = qService.selectQnaList(userId).size();
		
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage,listCount);
		ArrayList<Qna> list = qService.selectQnaList(pi,userId);
		Map hmap = new HashMap();
		
		hmap.put("list", list);
		hmap.put("pi",pi);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(hmap,response.getWriter());
	}
	
	
}
