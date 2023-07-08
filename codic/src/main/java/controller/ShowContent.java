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

/**
 * Servlet implementation class AddContent
 */
@WebServlet("/SelectContent")
public class ShowContent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ShowContent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String text = request.getParameter("text");
		String page = request.getParameter("page");
		
		if(text != "") {
			ContentDao contentDao = ContentDao.getInstance();
			ArrayList<Content> list = contentDao.getDataBytext(text);
			request.setAttribute("result", list); // result 값을 request에 저장
			System.out.println(list);
		}else {
			request.setAttribute("result", null);
		}
		String url ="/views/content.jsp";
		request.getRequestDispatcher(url).forward(request, response); // content.jsp로 forward
	}

}
