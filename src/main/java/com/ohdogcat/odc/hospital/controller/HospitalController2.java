package com.ohdogcat.odc.hospital.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.service.HospitalService2;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Controller
public class HospitalController2 {

   @Autowired
   private HospitalService2 hService2;
   
   @Autowired
   private BCryptPasswordEncoder be;
   
   @RequestMapping("info.ho")
   public String goInfo() {
      return "hospital";
   }

   @RequestMapping("hosP.ho")
   public String goHosP() {
      return "hosPage";
   }
   
   @RequestMapping("hosinfo.ho")
   public String goHosInfo() {
	   return "inserthospital2";
   }

   
   @RequestMapping("hupdate.ho")
   public String insertHospital(HMember hm, HttpServletRequest request,
         @RequestParam(name="uploadFile", required=false) MultipartFile file) {

      if(!file.getOriginalFilename().equals("")) {

         String FileName = saveFile(file, request);

         if(FileName != null) {
            hm.sethFile(file.getOriginalFilename());
         }
      }

      int result = hService2.hupdate(hm);

      if(result > 0) {
         return "redirect:hosP.ho";
      } else {
         return "homepage/h_index.jsp";
      }
   }



   public String saveFile(MultipartFile file, HttpServletRequest request) {

      String root = request.getSession().getServletContext().getRealPath("resources");

      String savePath = root+"\\hosImages";

      File folder = new File(savePath);

      if(!folder.exists()) {
         folder.mkdirs();
      }

      String originFileName = file.getOriginalFilename();

      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");                                 // 파일명 바꿔줌

      String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()))+"."                // 파일명 바꿔줌
            + originFileName.substring(originFileName.lastIndexOf(".")+1);      // 파일명 바꿔줌

      String renamePath = folder + "\\" + renameFileName;         // 실제 저장될 파일 경로 + 파일명

      try {
         file.transferTo(new File(renamePath));
      } catch (Exception e) {
         System.out.println("파일 전송 에러 : " + e.getMessage());
      }

      return renameFileName;
   }
   
   @RequestMapping("updatehosinfo.ho")
   public String updatehosinfo(HMember hm, String hComment, String add1, String add2, String add3, SessionStatus session) {
	   
	   hm.sethComment(hComment);
	
	   
	   System.out.println("hComment : " + hComment + "add1 : " + add1 + "add2" + add2 + "add3 : " + add3);
	   
	   if(!add1.equals("")) {
			hm.sethAddress(add1 + add2 + add3);
		}
	   
	   int result = hService2.updatehosinfo(hm);
	   
	   if(result > 0) {
		   session.setComplete();
		   return "redirect:hosP.ho";
	   }else {
		   return "";
	   }
   }
   
   
   @RequestMapping("hosupdate.ho")
   public String hosupdate(Model model, HMember hm, String pwd, String hPhone) {

	   
	  String encPwd = be.encode(hm.getUserPwd());
	  
      hm.setUserPwd(encPwd);
      hm.sethPhone(hPhone);
      
      System.out.println(hm);
      
      int result = hService2.hosupdate(hm);
      
      System.out.println("result : " + result);
      
      if(result > 0) {
//    	  model.addAttribute("loginUser",hm);
    	  return "redirect:chart.ho";
      }else {
    	  return "";
      }
      

//      return Integer.valueOf(result).toString();
      
   }

   @RequestMapping("hrList.ho")
   public void getReplyList(HttpServletResponse response, int hId) throws JsonIOException, IOException {

      ArrayList<hoReply> hrList = hService2.selectReplyList(hId);

      response.setContentType("application/json; charset=utf-8");

      Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

      gson.toJson(hrList, response.getWriter());
   }
   
   @RequestMapping("addReply.ho")
   @ResponseBody
   public String addReply(hoReply hr) {
      
      int result = hService2.insertReply(hr);
      
      if(result > 0) {
         return "success";
      } else {
         return "fail";
      }
   }
   
   
   
}