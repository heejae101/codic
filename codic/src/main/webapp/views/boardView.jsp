<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>${result.board_text}</title>
</head>
<body>
	<div>
		<h3>제목 : ${result.board_title}</h3>
		<h6>작성자 : ${result.user_email}</h6>
		<h5>내용 : ${result.board_text}</h5>
	</div>
	<c:if test="${result.user_email == sessionScope.email}">
		<a href="/BoardUpdateRequest?user_email=${result.user_email}">글수정</a>
	</c:if>
	
	<div id="comment"></div>
	
	<!-- 댓글 -->
	<div class="create-comment-area">
		<span id="writer">${sessionScope.nickname}</span>
		<textarea id="contents" placeholder="댓글 내용"></textarea>
		<button id="commentBtn">댓글 작성</button>
	</div>
<script src="../resources/script/boardcomment.js"></script>
</body>
</html>