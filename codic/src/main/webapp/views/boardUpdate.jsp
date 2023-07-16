<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty result}">
			<p>찾는 게시글이 없어요...</p>
		</c:when>
		<c:otherwise>
			<p>글수정</p>
			<form method="POST" action="BoardUpdate">
				<input type="hidden" name="boardId" value="${result.board_id}">
				<div>
					<input id="title" name="title" type="text" value="${result.board_title}" autofocus>
				</div>
				<div>
					<textarea id="text" name="text" value="${result.board_text}" autofocus>${result.board_text}</textarea>
				</div>
				<input type="submit" value="수정" id="updatde-bnt"
					onclick="checkValue(form)">
			</form>
			<script src="../resources/script/boardUpdate.js"></script>
		</c:otherwise>
	</c:choose>
</body>
</html>