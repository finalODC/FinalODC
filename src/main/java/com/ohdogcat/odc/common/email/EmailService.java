package com.ohdogcat.odc.common.email;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@SessionAttributes("code")
public class EmailService {
	
	@Autowired
	private JavaMailSender mailSender;
	
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
		mailSendWithUserKey(sb.toString(), email);
		return "1";
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="codeCheck.do", method=RequestMethod.POST)
	public String checkCode(String code, HttpServletRequest request, SessionStatus session) {
		HttpSession session1 = request.getSession();
		String saveCode = (String)session1.getAttribute("code");
		String result="";
		
		if(saveCode.equals(code)) {
			session.setComplete();
			result ="1";
		}
		
		return result;
	}

	
	public void mailSendWithUserKey(String code, String userMail) {
		System.out.println(code);
		if(!userMail.equals("")) {
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요  oh!docCat입니다.</h2><br><br>" 
				+ "<h3>신청하신 코드는<h3>  <h2>" +code+"</h2>입니다."
				
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
		try {
			mail.setSubject("[본인인증]  oh!docCat 인증메일", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(userMail));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}


		}
	}
}
