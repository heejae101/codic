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

@WebServlet("/UpdateBoardAction")
public class UpdateBoardViewsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateBoardViewsAction() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int board_id = Integer.parseInt(request.getParameter("board_id"));
    	
    	BoardDao boardDao = BoardDao.getInstance();
    	boolean result = boardDao.setViewsById(board_id);
    	
    	Map<String, Object> responseData = new HashMap<>();
    	responseData.put("result", result);
    	
    	if(result) {
    		String resultJson = new Gson().toJson(responseData);
    		response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(resultJson);
    	}
    	
	}
}
