package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.user.User;
import model.user.UserDao;

/**
 * Servlet implementation class NickNameDupl
 */

public class NickNameDupl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NickNameDupl() {
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
		request.setCharacterEncoding("UTF-8");
		String nickname=request.getParameter("user_nickname");
	 
		
	  UserDao userDao=UserDao.getInstance();
	  boolean dupl=userDao.duplNickname(nickname);
	  
	  Map<String, Object> responseData = new HashMap<>();
		
	  String resultJson = "";
		
		if(!dupl) {
			responseData.put("msg", "이메일 사용 가능");
			System.out.println("사용가능");
            System.out.println("결과 :"+responseData.toString());
	        
	        resultJson = new Gson().toJson(responseData);
	        
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json; charset=utf-8");
			System.out.println("사용가능");
			
		}else {
			
			System.out.println("중복닉네임");
		}
		
		response.getWriter().append(resultJson);
	}

}
