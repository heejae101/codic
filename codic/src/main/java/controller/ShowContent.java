package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.content.Content;
import model.content.ContentDao;

public class ShowContent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ShowContent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String text = request.getParameter("text");
		String category = request.getParameter("category");
		
		ContentDao contentDao = ContentDao.getInstance();
		
		if(text != null) {
			ArrayList<Content> list = contentDao.getDataBytext(text);
			request.setAttribute("result", list); // result 값을 request에 저장
		}
		else if(category != null) {
			ArrayList<Content> list = contentDao.getDataByCategory(category);
			request.setAttribute("result", list);
		}
		else {
			request.setAttribute("result", null);
		}
		
		System.out.println("check >>>");
		
		String url ="/content";
		request.getRequestDispatcher(url).forward(request, response); // content.jsp로 forward
	}

}
