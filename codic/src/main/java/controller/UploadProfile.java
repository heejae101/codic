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

/**
 * Servlet implementation class UloadProfile
 */

public class UploadProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String realPath = request.getServletContext().getRealPath("resources/img");
		String email = (String) requestSession.getAttribute("email");
		String fileName=null;
		//String contextPath = request.getContextPath();
		
		String new_profile=null;
		//System.out.println("realPath"+realPath);
		//System.out.println("contextPath:" +contextPath);
		System.out.println(email+"님 프로필 바꾼다.");
		
		String url="/";
		
		 try {
	         MultipartRequest multi = new MultipartRequest(
	               request, "C:\\Users\\주바리\\git\\codic\\codic\\src\\main\\webapp\\resources\\img", 1024*1024*2, "UTF-8", new DefaultFileRenamePolicy());
	         fileName = multi.getFilesystemName("new_profile");
	         System.out.println("fileName : " + fileName);
	         
	         email = multi.getParameter("user_email");
	         
	         new_profile = "../resources/img"+"/"+fileName;
	         System.out.println("new_profile:"+new_profile);
	         UserDao userDao=UserDao.getInstance();
	         boolean result=userDao.uploadProfile(email, new_profile);
	         
	         if (result) {
	            HttpSession session = request.getSession();
	            session.setAttribute("profile", new_profile);
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
