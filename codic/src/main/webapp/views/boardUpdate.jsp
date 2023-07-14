<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty result}">
			<p>찾는 주제의 지식이 없어요..</p>
			<p>이런 지식은 어때요?</p>
</c:if>
	<p>글수정</p>
			<form method="POST" action="../BoardUpdateFormAction">
			
			<input id="id" name="id" type="hidden" value="%{result.user_email}">

			<div>
				<input id="title" name="title" type="text" value="${result.board_text}"  placeholder="제목을 입력해 주세요" autofocus>
			</div>
			<div>
				<textarea id="text" name="text"  placeholder="내용을 입력해 주세요" autofocus>${result.board_text }</textarea>
			</div>
			<input type="submit" value="수정" id="updatde-bnt" onclick="checkValue(form)">
		</form>
			<script src="../resources/script/boardUpdate.js"></script>
</body>
</html>