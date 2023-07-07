package controller;

import java.io.IOException;
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
public class AddContent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddContent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String text = request.getParameter("text");
		
		System.out.println(text);
		
		ContentDao contentDao = ContentDao.getInstance();
		Content result = contentDao.getDataBytext(text);
		
		String url ="/views/content.jsp";
		request.setAttribute("result", result); // result 값을 request에 저장
		request.getRequestDispatcher(url).forward(request, response); // content.jsp로 forward
	}

}
