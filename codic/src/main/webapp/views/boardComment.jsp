<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="../BoardCommentFormAction">
		<div>
			<input id="email" name="cNum" type="text" placeholder="댓글 번호"
				autofocus>
		</div>
		<div>
			<input id="title" name="bNum" type="text" placeholder="게시판 번호"
				autofocus>
		</div>
		<div>
			<input id="text" name="uId" type="text" placeholder="게시글 유저 아이디"
				autofocus>
		</div>
		<div>
			<input id="text" name="text" type="text" placeholder="내용" autofocus>
		</div>
		<input type="submit" value="등록" id="write-bnt"
			onclick="checkValue(form)">
	</form>
	<script src="../resources/script/writeComment.js"></script>
</body>
</html>
