package com.ohdogcat.odc.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HospitalController {

	@RequestMapping("chart.ho")
	public String goChart() {
		return "doctorChart";
	}
	
	@RequestMapping("info.ho")
	public String goInfo() {
		return "hospital";
	}
	
	
}
