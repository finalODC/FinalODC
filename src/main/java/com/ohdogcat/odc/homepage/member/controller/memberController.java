package com.ohdogcat.odc.homepage.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class memberController {
	
	@RequestMapping("mlogin.do")
	public String mlogin() {
		return "homepage/h_login1";
	}

}
