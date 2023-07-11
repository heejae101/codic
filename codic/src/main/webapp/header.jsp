<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
	<header>
		<a href="main"><h1>CODIC</h1></a>
		<div id="search-bar">
			<input type="text" id="search" placeholder="검색">
			<button onclick="search()">검색</button>
		</div>
	</header>
	<header>
		<a href="main"><h1>CODIC</h1></a>
		<a href=""><p>카테고리</p></a>
		<a href="/BoardListRequest">질문게시판</a>
		<a href=""><p>로그인</p></a>
		<a href=""><p>로그아웃</p></a>
		<div id="search-bar">
			<input type="text" id="text" name="text" onkeypress="checkValue(form)">
		</div>
	</header>
<script src="../resources/script/search.js"></script>
</body>
</html>