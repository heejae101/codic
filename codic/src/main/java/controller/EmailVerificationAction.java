package controller;

import java.io.IOException;
import java.util.Random;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import util.AuthManager;
import util.EncryptionDataManager;
import java.util.Properties;


public class EmailVerificationAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EncryptionDataManager encrypt = new EncryptionDataManager();
		AuthManager auth = new AuthManager();
		Properties props = new Properties();
		
		String email = request.getParameter("user_email");
		System.out.println("email : "+email);
        String verificationCode = encrypt.generateActivationCode();
        String verificationDuration = auth.getVerificationDuration();
        String host = "smtp.gmail.com";
        String user = "oeglks601@gmail.com";
        String password = "vzfawgfmsmyconwx";

        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", user);
        props.put("mail.smtp.password", password);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        Map<String, Object> responseData = new HashMap<>();
        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress("oeglks601@gmail.com","CODIC"));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
            msg.setSubject("[CODIC] 이메일 확인 코드");
            msg.setText("[CODIC] 이메일 확인 코드 : " + verificationCode);
            Transport.send(msg);
         
            responseData.put("result", "VERIFICATION_SENT");
            responseData.put("verification_code", verificationCode);
            responseData.put("verification_duration", verificationDuration);
            String resultJson = new Gson().toJson(responseData);
            
            HttpSession responseSession = request.getSession();
            responseSession.setAttribute("VERIFICATION_CODE", verificationCode);
            responseSession.setAttribute("VerificationDuration", verificationDuration);
            
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(resultJson);
            
        } catch (MessagingException e) {        	
        	response.setContentType("application/json");
        	response.setCharacterEncoding("UTF-8");
        	response.getWriter().write(new Gson().toJson(responseData));
            e.printStackTrace();
        }
	}

}
