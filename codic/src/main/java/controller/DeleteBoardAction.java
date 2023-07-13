package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.board.BoardDao;


@WebServlet("/DeleteBoard")
public class DeleteBoardAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteBoardAction() {
        super();
        
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String board_id = request.getParameter("board_id");
    	BoardDao boardDao = BoardDao.getInstance();
    	boolean result = boardDao.deleteBoardByBoardId(board_id);
    	
    	Map<String, Object> responseData = new HashMap<>();
    	responseData.put("result", result);
    	
    	if(result) {
    		String resultJson = new Gson().toJson(responseData);
    		response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(resultJson);
    	}
    	
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String board_id = request.getParameter("board_id");
	}

}
