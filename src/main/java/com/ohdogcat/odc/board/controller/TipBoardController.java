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
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.common.Pagination;

@Controller
public class TipBoardController {

	@Autowired
	private BoardService bService;
	
//	@RequestMapping("FBoardgo.bo")
//	public String FreeBoardGo() {
//		return "BoardPageFree";
//	}

	@RequestMapping("DBlist.bo")
	public ModelAndView DogBoardList(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		int listCount = bService.DogBoardCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		System.out.println("listCount" + listCount);

		ArrayList<TipBoard> DBlist = bService.DogBoardList(pi);

		mv.addObject("list", DBlist);
		mv.addObject("pi", pi);
		mv.setViewName("BoardPageDog");

		System.out.println(pi);
		System.out.println(DBlist);
		return mv;
	}

	/**
	 * 글쓰기 버튼 클릭시 BoardWriter로 보내버리는 코드 
	 * @return
	 */
	@RequestMapping("insertDogBoard.bo")
	public String BoardWriterView() {

		return "BoardPageDogWriter";
	}
	
	
	@RequestMapping("DogBoardWriter.bo")
	public String DogBoardWriter(TipBoard tb) {
		//HttpServletRequest 이란 홈페이지에서 받은 값을 서블렛으로 보내주는 메소드 
		//RequestMapping 있을경우에는 굳이 안써도 된다.
		// 
		
		int result = bService.DogBoardWriter(tb);
		
		if(result > 0) {
			return "redirect:DBlist.bo";
		}else {
			return "";
		}
	}

	
}
