package com.ohdogcat.odc.homepage.member.controller;


import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.ohdogcat.odc.common.email.EmailService;
import com.ohdogcat.odc.common.email.EmailService;
import com.ohdogcat.odc.homepage.member.model.vo.HMember;
import com.ohdogcat.odc.homepage.member.service.HMemberService;

@SessionAttributes("code")
@Controller
public class HMemberController {
	
	@Autowired
	private HMemberService hmService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	 @Autowired
		private EmailService mailsender;



	
	@RequestMapping("hSignin.do")
	public String hInsertForm() {
		return "homepage/hp_signin.jsp";
	}
	
	@ResponseBody
	@RequestMapping("hIdCheck.do")
	public String hIdCheck(String userId) {
		
		int result = hmService.hIdCheck(userId);
		
		return Integer.valueOf(result).toString();
		
	}
	
	/**
	 * 사업자 번호 확인
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@ResponseBody
	@RequestMapping(value ="hBusiness.do" , produces="text/plain;charset=UTF-8")
	public String checkBuisness(String hName, String hCode )  {

		String result=null;
		try {
			String address="http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getBassInfoSearch";
			String serviceKey = "JJZZofqxnPMgm7QKheO6abgNv%2BzLXGf1Cerji14Fhtgl2sSwVmSq%2BvQDhapYzqWfU21N%2BHHlstgaWb89OK0ZJw%3D%3D";
			String name = URLEncoder.encode(hName,"UTF-8");
			String code = URLEncoder.encode(hCode,"UTF-8");
			
			address +="?"+ URLEncoder.encode("ServiceKey","UTF-8")+"="+serviceKey;
			address += "&"+URLEncoder.encode("wkpl_nm","UTF-8")+"="+name;
			address += "&"+URLEncoder.encode("bzowr_rgst_no","UTF-8")+"="+code;
			address += "&"+URLEncoder.encode("_type","UTF-8") + "=json";
			
			System.out.println(address);
			
			URL url = new URL(address);
			
			InputStream in = url.openStream();
			
			ByteArrayOutputStream bos1 = new ByteArrayOutputStream();
			
			IOUtils.copy(in, bos1);
			in.close();
			bos1.close();
			
			String item = bos1.toString("UTF-8"); //바이트 형식으로 들어옴
			
			byte[] b = item.getBytes("UTF-8"); //바이트 배열화
			 result= new String(b,"UTF-8");//바이트를 스트링으로 만들고
			
			System.out.println();
	
		

			JSONParser paser = new JSONParser(); //json객체로 변환해줄 객체 생성
			JSONObject pob = (JSONObject)paser.parse(result); //만들어진 결과 스트링을 json객체로 변환
			System.out.println(pob);
			
			

			
			return pob.toJSONString();//그 객체를 gson을 사용해 넘겨줌

			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	@RequestMapping("hInsert.do")
	public void hInsert(HMember m,String add1, String add2, String add3) {
		
		
		m.setUserPwd(bCryptPasswordEncoder.encode(m.userPwd));
		if(!add1.equals("")) {
			m.sethAddress(add1 + add2 + add3);
		}
		
		System.out.println(m);

//		int result = hmService.hInsert(m);
//		System.out.println(result);
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="sendCode.do", method= RequestMethod.POST)
	public String sendCode(String email, Model m) {
		//난수 만들기
		StringBuffer sb = new StringBuffer();
		for(int i =0; i<3; i++) {
			int nRan = (int)(Math.random()*123+1);
			sb.append(nRan);

			for(int j = 0; j<Math.round(Math.random()+1);j++) {
				sb.append((char)((int)(Math.random()*26)+65));
			}
			
		}
		
		
		m.addAttribute("code",sb.toString());
		mailsender.mailSendWithUserKey(sb.toString(), email);
		return "메일이 발송되었습니다.";
	
	}
	
	
	@ResponseBody
	@RequestMapping(value="codeCheck.do", method=RequestMethod.POST)
	public String checkCode(String code, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String saveCode = (String)session.getAttribute("code");
		String result="";
		System.out.println(code);
		System.out.println();
		if(saveCode.equals(code)) {
			result ="1";
		}
		
		return result;
	}
	
}
