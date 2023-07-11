<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>${result.board_text }</title>
</head>
<body>
	<div>
		<h3>제목 : ${result.board_title }</h3>
		<h6>작성자 : ${result.user_email }</h6>
		<h5>내용 : ${result.board_text }</h5>
	</div>
	<a href="/BoardUpdateRequest?user_email=${result.user_email}">글수정</a>


	<!-- 댓글 -->
	<div>
	<ul>
		<li>글쓴이 : </li><br>
		<li></li><br>
		<li></li>
	
	</ul>
	
	</div>
	<form method="POST" action="../BoardCommentFormAction">
		<div>
		</div>
		<div>
			<input name="bNum" type="hidden" value="${result.board_id }">
		</div>
		<div>
			<input id="text" name="uId" type="text" placeholder="게시글 유저 아이디(지정입력)"
				autofocus>
		</div>
		<div>
			<input id="text" name="ctext" type="text" placeholder="내용" autofocus>
		</div>
		<input type="submit" value="등록" id="write-bnt"
			onclick="checkValueComment(form)">
	</form>
	<script src="../resources/script/writeComment.js"></script>
</body>
</html>