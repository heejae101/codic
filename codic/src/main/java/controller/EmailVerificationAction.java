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
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

public class EmailVerificationAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO 난수 생성
		int repeat = 6;
		Random r = new Random();
		String authToken = "";
		String randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		for (int i = 0; i < repeat; i++) {
			int code = r.nextInt(randomString.length());
			authToken += randomString.substring(code, code + 1);
		}
        
        // TODO 토큰값 제한 시간 두기
		// format 2023-07-11/10:06:32
		int setTime = 3;
		Calendar calendar = Calendar.getInstance();
		String day = calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH);
		String time = calendar.get(Calendar.HOUR_OF_DAY)+""+(calendar.get(Calendar.MINUTE)+setTime)+""+calendar.get(Calendar.SECOND);
        
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
            msg.setSubject("[CODIC] 이메일 확인 코드");
            msg.setText("[CODIC] 이메일 확인 코드 : " + authToken);
            
            HttpSession emailSession = request.getSession();
            emailSession.setAttribute("EmailCheck", false);
    		emailSession.setAttribute("AuthTime", day+"/"+time);
    		emailSession.setAttribute("AuthToken", authToken);

            Transport.send(msg);
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('인증코드를 확인해주세요.');</script>");
            request.getRequestDispatcher("/views/emailAuth.jsp").forward(request, response);
        } catch (MessagingException e) {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('이메일 발송 오류!');</script>");
            e.printStackTrace();
        }
	}

}
