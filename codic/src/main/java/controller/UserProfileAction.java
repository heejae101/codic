package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.User;
import model.user.UserDao;

@WebServlet("/UserProfileAction")
public class UserProfileAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserProfileAction() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		String nickname = (String) requestSession.getAttribute("nickname");
		String email = (String) requestSession.getAttribute("email");
		String name = (String) requestSession.getAttribute("name");
		
		UserDao userDao = UserDao.getInstance();
//		//TODO 즐겨찾기한 게시판 내프로필
//		ArrayList<User> favoriteList = userDao.getfavoriteByEmail("email");
//		ArrayList<User> Image = userDao.getImageByEmail("email");
		
	}

}
