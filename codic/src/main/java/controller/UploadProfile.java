package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.user.User;
import model.user.UserDao;


public class UploadProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UploadProfile() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		String realPath = request.getServletContext().getRealPath("resources");
		String email = (String) requestSession.getAttribute("email");
		String fileName=null;
		String contextPath = request.getServletContext().getContextPath();
		
		String new_profile=null;
		System.out.println("realPath"+realPath);
		System.out.println("contextPath:" +contextPath);
		System.out.println(email+"님 프로필 바꾼다.");
		
		String url="/";
		
		 try {
	         MultipartRequest multi = new MultipartRequest(
	               request, realPath, 1024*1024*2, "UTF-8", new DefaultFileRenamePolicy());
	         fileName = multi.getFilesystemName("new_profile");
	         System.out.println("fileName : " + fileName);
	         
	         email = multi.getParameter("user_email");
	         
	         new_profile = contextPath + "/img/" + fileName;
	         System.out.println("new_profile"+new_profile);
	         UserDao userDao=UserDao.getInstance();
	         boolean result=userDao.uploadProfile(email, new_profile);
	         
	         if (result) {
	            HttpSession session = request.getSession();
	            User user = userDao.getUserByEmail(email);
	            session.setAttribute("user", user);
	            url="myPage";
	            
	            
	         } else {
	        	 System.out.println("업데이트 실패");
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	         System.out.println("실패");
	       
	      }
		 response.sendRedirect(url);
	   }

	       


}
