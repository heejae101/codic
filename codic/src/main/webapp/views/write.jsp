<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="write-box">
		<form method="POST" action="../BoardFormAction">
			<div>
				<input id="email" name="email" type="text"  placeholder="이메일을 입력해 주세요" autofocus>			
			</div>
			<div>
				<input id="title" name="title" type="text"  placeholder="제목을 입력해 주세요" autofocus>
			</div>
			<div>
				<input id="text" name="text" type="text"  placeholder="내용을 입력해 주세요" autofocus>			
			</div>
			<div>
				<input id="view_count" name="view_count" type="text"  placeholder="조회수를 입력해 주세요" autofocus>			
			</div>

			<input type="submit" value="등록" id="write-bnt" onclick="checkValue(form)">
		</form>
	</div>
	
	<script src="../resources/script/write.js"></script>
</body>
</html>