package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.User;
import model.user.UserDao;
import util.EncryptionDataManager;

public class DeleteUserFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteUserFormAction() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		EncryptionDataManager encrypt = new EncryptionDataManager();
		String email= request.getParameter("user_email");
		String password=request.getParameter("user_password");
		
		try {
			password = encrypt.passwordEncrypt(requestPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		UserDao userDao=UserDao.getInstance();
		User user = userDao.getUserByEmail(email);
		boolean result=userDao.deleteUserByEmail(email, password);
		
		String url="leave";
		if(user.getUser_password().equals(password)) {
		if(result) {
			request.getSession().removeAttribute("log");

			url="main";
			System.out.println("삭제");

		}else {
			request.setAttribute("text", "비밀번호가 올바르지 않습니다.");
			url="leave";
			System.out.println("삭제 실패");
		}
		}
		
		response.sendRedirect(url);
	}

}
