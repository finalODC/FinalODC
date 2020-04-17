package com.ohdogcat.odc.qna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.qna.model.service.QnaService;
import com.ohdogcat.odc.qna.model.vo.Qna;

@Controller
public class QnaController {
	@Autowired
	private QnaService qService;

	@RequestMapping("insertQNA.qn")
	public String insertQNA(Qna q) {
		System.out.println(q);
		int result=qService.insertQna(q);
		return "myPageQNA";
	}

	@RequestMapping("myqnalist.qn")
	public void qnaList(HttpServletResponse response,@RequestParam String userId) throws JsonIOException, IOException {
		System.out.println(userId);
		ArrayList<Qna> list=qService.selectQnaList(userId);
		response.setContentType("application/json; charset=utf-8");

		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(list,response.getWriter());
	}
}
