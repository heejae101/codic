<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link href="../resources/style/reset.css" rel="stylesheet">
<link href="../resources/style/writeUpdateBoard.css" rel="stylesheet">
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<title>게시글 수정</title>
</head>
	<c:if test="${empty sessionScope.nickname}">
		<c:redirect url="login"></c:redirect>
	</c:if>
<body>
	<jsp:include page="/header"></jsp:include>
	<div id="container">
	<jsp:include page="/menuBar"></jsp:include>
	<div id="write-box">
		<form method="POST" action="/BoardFormAction">
			<div id="title-box">
				<input id="title" name="title" type="text"  placeholder="제목을 입력해 주세요" autofocus>
			</div>
			<div id="contents-box">
				<textarea id="contents" name="contents" placeholder="내용을 입력해 주세요"></textarea>			
			</div>
			<div id="button-box">
			<input type="button" value="수정" id="update-bnt" onclick="checkValue(form)">
			</div>
		</form>
	</div>
	</div>
	<jsp:include page="/footer"></jsp:include>
	
	<script src="../resources/script/write.js"></script>
</body>
</html>