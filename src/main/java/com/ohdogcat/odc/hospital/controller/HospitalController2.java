package com.ohdogcat.odc.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HospitalController2 {
	
	@RequestMapping("info.ho")
	public String goInfo() {
		return "hospital";
	}
	
	@RequestMapping("hosP.ho")
	public String goHosP() {
		return "hosPage";
	}
}
