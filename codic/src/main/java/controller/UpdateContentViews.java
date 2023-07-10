package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.content.ContentDao;

/**
 * Servlet implementation class UpdateContentViews
 */
@WebServlet("/updateViews")
public class UpdateContentViews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateContentViews() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int contentId = Integer.parseInt(request.getParameter("contentId"));
		 ContentDao contentDao = ContentDao.getInstance();
		 contentDao.setViewsById(contentId);
		 response.sendRedirect(contentId+".jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
