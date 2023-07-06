<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
</head>
<body>
<div class="search-wrapper">
	<div>
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-search" viewBox="0 0 16 16">
		<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
		</svg>
	</div>
	<div>
		<form method="get" action="">
			<input type="text" id="text" name="text" placeholder="무엇이든 물어보세요!">
			<input type="button" id="submit-btn" value="회원가입" onclick="checkValue(form)">
		</form>
	</div>
	<div>
		<li><a href="join">더미데이터 넣기</a></li>
	</div>
</div>
<script src="../resources/script/main.js"></script>
</body>
</html>