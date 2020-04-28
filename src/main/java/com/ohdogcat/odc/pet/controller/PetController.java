package com.ohdogcat.odc.pet.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.pet.model.service.PetService;
import com.ohdogcat.odc.pet.model.vo.Pet;

@Controller
public class PetController {
	@Autowired
	private PetService pService;
	@RequestMapping("pet.pe")
	public String pet() {
		return "myPagePet";
	}
	
	@RequestMapping("mypetlist.pe")
	public void myPetList(HttpServletResponse response,@RequestParam int mId) throws JsonIOException, IOException {
		ArrayList<Pet> list=pService.selectMyPetList(mId);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(list,response.getWriter());
	}
	
	@RequestMapping("signinPage.pe")
	public String signinPage(String pSpecies,Model m) {
		m.addAttribute("species",pSpecies);
		return "p_signin";
	}
	@RequestMapping("inserPet.pe")
	public String insertPet(Pet p) {
		int result=pService.insertPet(p);
		System.out.println(result);
		return "myPagePet";
	}
	
	@RequestMapping("updatePet.pe")
	public String updatePet(Pet p) {
		System.out.println("PATHCHECK");
		System.out.println(p);
		pService.updatePet(p);
		
		return "redirect:pet.pe";
	}
	
	@RequestMapping("deletePet.pe")
	public String deletePet(@RequestParam int pid) {
		System.out.println(pid);
		int result=pService.deletePet(pid);
		System.out.println(result);
		return "redirect:pet.pe";
	}

































}





































































