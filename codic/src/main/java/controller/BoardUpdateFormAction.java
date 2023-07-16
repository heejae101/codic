package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.BoardDao;
import model.board.BoardRequestDto;
import model.user.UserDao;
import model.user.UserRequestDto;


public class BoardUpdateFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardUpdateFormAction() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String user_email = (String) request.getSession().getAttribute("email");
		int board_id = Integer.parseInt(request.getParameter("boardId"));
		String board_title = request.getParameter("title");
		String board_text = request.getParameter("text");
		
		System.out.println(user_email+"님의"+board_id+"번 게시글 수정 완료 요청");
		
		BoardDao boardDao = BoardDao.getInstance();
		boolean result = boardDao.updateBoard(board_id, user_email, board_title, board_text);
		
		System.out.println("요청 결과"+result);

		String url = "boardList";
		response.sendRedirect(url);
	}

}
