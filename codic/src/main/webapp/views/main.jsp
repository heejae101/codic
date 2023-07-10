<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>content</title>
</head>
<body>
	<h1>${sessionScope.log}님환영합니다</h1>
	<div class="search-wrapper">
		<div>
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="red" class="bi bi-search" viewBox="0 0 16 16">
		<path
					d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
		</svg>
		</div>
		<div>
			<form method="GET" action="/SelectContent">
				<input type="text" id="text" name="text" placeholder="무엇이든 물어보세요!"
					onkeypress="checkValue(this, event)">
			</form>
		</div>
		<div class="category-area">
			<h3>카테고리</h1>
			<ul>
				<li><a href="/SelectContent?category=html">HTML</a></li>
				<li><a href="/SelectContent?category=css">CSS </a></li>
				<li><a href="/SelectContent?category=javascript">JAVASCRIPT</a></li>
				<li><a href="/SelectContent?category=java">JAVA</a></li>
				<li><a href="/SelectContent?category=database">DATABASE</a></li>
			</ul>
		</div>
		<ul>
			<li><a href="join">더미데이터 넣기</a></li>
			<li><a href="../LogoutAction">로그아웃</a></li>
			<li><a href="/views/updateUserForm.jsp">회원정보 수정</a></li>
			<li><a href="/views/deleteUserForm.jsp">회원탈퇴</a></li>
		</ul>
	</div>
	<script src="../resources/script/search.js"></script>
</body>
</html>