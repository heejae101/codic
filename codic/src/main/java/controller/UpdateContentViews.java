package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.content.Content;
import model.content.ContentDao;

public class UpdateContentViews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateContentViews() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		String user_email = (String) requestSession.getAttribute("email");
		int content_id = Integer.parseInt(request.getParameter("contentId"));
		
		System.out.println(user_email+"님의"+content_id+"게시글 열람 요청");
		
		ContentDao contentDao = ContentDao.getInstance();
		contentDao.setViewsById(content_id);
		Content content = contentDao.getDataById(content_id);
		
		String url = content.getContent_path();
		request.setAttribute("result", content);
		request.getRequestDispatcher(url).forward(request, response);
	}
}
