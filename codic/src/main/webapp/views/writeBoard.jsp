<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>게시글 작성</title>
</head>
	<c:if test="${empty sessionScope.nickname}">
		<c:redirect url="login"></c:redirect>
	</c:if>
<body>
	<div id="write-box">
		<form method="POST" action="/BoardFormAction">
			<div>
				<input id="title" name="title" type="text"  placeholder="제목을 입력해 주세요" autofocus>
			</div>
			<div>
				<input id="contents" name="contents" placeholder="내용을 입력해 주세요"></textarea>			
			</div>
			<input type="button" value="등록" id="update-bnt" onclick="checkValue(form)">
		</form>
	</div>
	<script src="../resources/script/write.js"></script>
</body>
</html>