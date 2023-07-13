package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.BoardCommentDao;

public class DeleteBoardComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public DeleteBoardComment() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String board_id = request.getParameter("board_id");
		int comment_id = Integer.parseInt(request.getParameter("comment_id"));
		
		BoardCommentDao boardCommentDao = BoardCommentDao.getInstance();
		boardCommentDao.deleteBoardComment(comment_id);
	}
}
