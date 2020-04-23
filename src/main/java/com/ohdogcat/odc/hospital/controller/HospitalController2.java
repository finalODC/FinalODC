package com.ohdogcat.odc.hospital.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.hospital.model.service.HospitalService2;
import com.ohdogcat.odc.hospital.model.vo.Doctor;
import com.ohdogcat.odc.hospital.model.vo.hoReply;

@Controller
@SessionAttributes("hospital")
public class HospitalController2 {
	
	private HMember hm1;
	@Autowired
	private HospitalService2 hService2;

	@Autowired
	private BCryptPasswordEncoder be;

	@RequestMapping("info.ho")
	public String goInfo(Model m, HttpSession session) {
		hm1 = (HMember)session.getAttribute("loginUser");
		System.out.println("들어오자 마자"+hm1);
		m.addAttribute("hospital", hm1);
		
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

	@RequestMapping("insertdoc.ho")
	public String goIndoc() {
		return "doctorInsert";
	}

	@RequestMapping("comdoc.ho")
	public String goCom() {
		return "doctorcom";
	}
	

	@RequestMapping("updatehosinfo.ho")
	public String updatehosinfo(HMember hm, HttpServletRequest request, Model model,
							  @RequestParam(name="hImage",required=false) MultipartFile file,
							  String hComment,
							  String add1, String add2, String add3) {
		
		String renameFileName = saveHos(file, request);
		
		if(!file.getOriginalFilename().equals("")) {
			// 서버에 업로드
	
			if(renameFileName != null) {		// 파일이 잘 저장된 경우
				hm.sethFile(renameFileName);
				hm1.sethFile(renameFileName);
				
			}
		}
		
		System.out.println("file : " + file);
		
		hm.sethComment(hComment);
		hm1.sethComment(hComment);
		
		System.out.println("hComment : " + hComment);
		
		if(!add1.equals("") && add1 !=null) {
			hm.sethAddress(add1 +"//"+ add2+"//" + add3);
			hm1.sethAddress(add1 +"//"+ add2+"//" + add3);
		}
		
		System.out.println(add1 + add2 + add3);
		
		int result = hService2.updatehosinfo(hm);
		
		System.out.println(result);
	
		if(result > 0) {
			model.addAttribute("hospital",hm1);
			System.out.println(hm1);
			return "redirect:chart.ho";
		} else {
			return "redirect:comdoc.ho";
		}
		
	}
	
	@RequestMapping("indoc.ho")
	public String indoc(Doctor doc, HttpServletRequest request, Model model,
			  @RequestParam(name="docImage",required=false) MultipartFile file,
			  @RequestParam(name="docIntro",required=false) String docIntro, 
			  @RequestParam(name="docName",required=false) String docName) {
		

		ArrayList<Doctor> doc1 = hm1.getDoctor();
	
		
		String renameImageName = saveDoc(file, request);
		
		if(!file.getOriginalFilename().equals("")) {
			// 서버에 업로드
	
			if(renameImageName != null) {		// 파일이 잘 저장된 경우
				doc.setDocFile(renameImageName);
				
			}
		}
		
		
		doc.setDocIntro(docIntro);
		
		doc.setDocName(docName);
		
		System.out.println("intro , name : " + docIntro + docName);
		
		System.out.println("doc : " + doc);
		
		int result = hService2.indoc(doc);
		
		
		if(result > 0) {
			
			doc1.add(doc);
			hm1.setDoctor(doc1);
			model.addAttribute("hospital",hm1);
			return "redirect:insertdoc.ho";
		} else {
			return "redirect:comdoc.ho";
		}
		
	}

	public String saveHos(MultipartFile file, HttpServletRequest request) {

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
	
	
	
	
	public String saveDoc(MultipartFile file, HttpServletRequest request) {

		String image = request.getSession().getServletContext().getRealPath("resources");

		String saveImage = image+"\\docImages";

		File folder = new File(saveImage);

		if(!folder.exists()) {
			folder.mkdirs();
		}

		String originImageName = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");                                 // 파일명 바꿔줌

		String renameImageName = sdf.format(new java.sql.Date(System.currentTimeMillis()))+"."                // 파일명 바꿔줌
				+ originImageName.substring(originImageName.lastIndexOf(".")+1);      // 파일명 바꿔줌

		String renamePath = folder + "\\" + renameImageName;         // 실제 저장될 파일 경로 + 파일명

		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return renameImageName;
	}

	@RequestMapping("deleteDoc.ho")
	public String deleteDoc(int dId) {
		
	
		
		int result = hService2.deleteDoc(dId);

		System.out.println("re : " + result);
		if(result > 0) {

				ArrayList<Doctor> doc1 = hm1.getDoctor();
				for(int i = 0; i<doc1.size();i++) {
					if(doc1.get(i).getdId() == dId) {
						doc1.remove(i);
					}
				}
				hm1.setDoctor(doc1);
			return "redirect:insertdoc.ho";
		} else {
			return "redirect:comdoc.ho";
		}
	}

	@RequestMapping("updateDoc")
	public String updateDoc(@ModelAttribute Doctor doc) {
		
		int result = hService2.updateDoc(doc);
		
	
		if(result > 0) {
			ArrayList<Doctor> doc1 = hm1.getDoctor();
			for(int i = 0; i<doc1.size();i++) {
				if(doc1.get(i).getdId() == doc.getdId()) {
					doc1.set(i, doc);
				}
			}
			hm1.setDoctor(doc1);
		
			return "redirect:insertdoc.ho";
		} else {
			return "redirect:comdoc.ho";
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


}