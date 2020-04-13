package com.ohdogcat.odc.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ohdogcat.odc.board.model.service.BoardService;

@Controller
public class FreeBoardController {

	@Autowired
	private BoardService bService;
}
