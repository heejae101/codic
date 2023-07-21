<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link href="../resources/style/reset.css" rel="stylesheet">
<link href="../resources/style/writeUpdateBoard.css" rel="stylesheet">
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<title>게시글 수정</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty result}">
			<p>찾는 게시글이 없어요...</p>
		</c:when>
		<c:otherwise>
			<jsp:include page="/header"></jsp:include>
			<div id="container">
				<jsp:include page="/menuBar"></jsp:include>
				<div id="write-box">
					<form method="POST" action="BoardUpdate">
						<input type="hidden" name="boardId" value="${result.board_id}">
						<div id="title-box">
							<input id="title" name="title" type="text"
								value="${result.board_title}" autofocus>
						</div>
						<div id="contents-box">
							<textarea id="text" name="text" value="${result.board_text}"
								autofocus>${result.board_text}</textarea>
						</div>
						<div id="button-box">
							<input type="button" value="수정" id="updatde-bnt"
								onclick="checkValue(form)">
						</div>
					</form>

				</div>
			</div>
			<jsp:include page="/footer"></jsp:include>
			<script src="../resources/script/boardUpdate.js"></script>
		</c:otherwise>
	</c:choose>
</body>
</html>