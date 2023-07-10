package controller;

import java.io.IOException;
import java.util.Random;
import java.util.Calendar;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;

/**
 * Servlet implementation class EmailVerificationAction
 */
@WebServlet("/EmailVerification")
public class EmailVerificationAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO 난수 생성
		int code;
		int repeat = 6;
		Random r = new Random();
		String authToken = "";
		String randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		for (int i = 0; i < repeat; i++) {
			code = r.nextInt(randomString.length());
			authToken += randomString.substring(code, code + 1);
		}
        
        // TODO 토큰값 제한 시간 두기
		Calendar calendar = Calendar.getInstance();
		int hour = calendar.get(Calendar.HOUR_OF_DAY);
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);
        
        int setTime = 3;
        String validTime = hour+""+(minute+setTime)+""+second+"";
        request.setAttribute("validTime", validTime);
        
        String to = request.getParameter("email");
        String host = "smtp.gmail.com";
        String user = "oeglks601@gmail.com";
        String password = "vzfawgfmsmyconwx";

        Properties props = new Properties();
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

        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(user));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            msg.setSubject("이메일 확인 코드");
            msg.setText("이메일 확인 코드 : " + authToken);

            Transport.send(msg);

            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('인증코드를 확인해주세요.');history.back();</script>");
        } catch (MessagingException e) {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('이메일 발송 오류!');</script>");
            e.printStackTrace();
        }
	}

}
