package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import model.board.BoardCommentDao;

public class UpdateBoardComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateBoardComment() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

	    // JSON 데이터를 저장할 StringBuilder 객체 생성
	    StringBuilder jsonPayload = new StringBuilder();

	    // 요청 본문(body)을 읽어올 BufferedReader 생성
	    try (BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream()))) {
	        String line;
	        while ((line = reader.readLine()) != null) {
	            jsonPayload.append(line);
	        }
	    }

	    // JSON 데이터 확인
	    System.out.println("받은 JSON 데이터: " + jsonPayload.toString());
		
	    JsonParser parser = new JsonParser();
	    JsonElement jsonElement = parser.parse(jsonPayload.toString());

	    // JSON 객체로 변환
	    JsonObject jsonObject = jsonElement.getAsJsonObject();

	    // board_id 값 가져오기
	    String boardId = jsonObject.get("board_id").getAsString();
	    
	    
	    System.out.println("board_id: " + boardId);
	    
		String user_email = (String) request.getSession().getAttribute("email");
	    
	    
		
//		System.out.println(user_email+"님의"+board_id+"번 게시글 수정 완료 요청"+comment_id+"번 댓글 수정 완료 요청");
//		
//		BoardCommentDao boardCommentDao = BoardCommentDao.getInstance();
//		boolean result = boardCommentDao.updateBoardComment(comment_id, board_answer);
//		
//		System.out.println("요청 결과"+result);
		
		String url ="";
		response.sendRedirect(url);
		
	}

}
