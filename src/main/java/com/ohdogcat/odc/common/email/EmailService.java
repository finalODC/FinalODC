package com.ohdogcat.odc.common.email;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {
	
	@Autowired
	private JavaMailSender mailSender;

	
	public void mailSendWithUserKey(String code, String userMail) {
		System.out.println(code);
		System.out.println(userMail);
		if(!userMail.equals("")) {
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요  oh!docCat입니다.</h2><br><br>" 
				+ "<h3> "+"님</h3>" + "코드는  <h2>" +code+"</h2>입니다."
				
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
