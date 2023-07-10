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
	<h3>제목 : ${result.board_title }</h1>
	<h6>작성자 : ${result.user_email }</h6>

	<h5>내용 : ${result.board_text }</h5>
	</div>
	<a href="../BoardUpdateRequest?board_id=${result.board_id}">글수정</a>
</body>
</html>