<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../resources/style/reset.css">
	<link href="../resources/style/header.css" rel="stylesheet">
</head>

<body>
	
	<div class="header_body">
	<header>
		<div class="hambuger">
			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
				<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
			  </svg>
		</div>

		<div class="top-left">
			<div class="logo">
				<a href="main">
					<h1>CODIC</h1>
				</a>
				<a href="main"><svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
					<path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
				  </svg></a>
			</div>
			<div class="board">
				<a href="">카테고리</a>
				<a href="">로드맵</a>
				<a href="/BoardListRequest">질문게시판</a>
			</div>
		</div>

		<div class="top-right">
			<div class="user">
				<a href="">로그인/</a>
				<!-- 로그인 시 이미지로 변환-->
				<img src="heart.png" style="display: none;">
	
				<a href="">회원가입</a>
				<!-- 로그인 시 이미지로 변환-->
				<img src="circle-user.png" style="display: none;">
			</div>
		<div class="search" id="search-bar">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
			  </svg>
			<input type="text" id="text" name="text" onkeypress="checkValue(form)">
		</div>
	</div>
	</header>
	<script src="../resources/script/search.js"></script>
</div>


</body>

</html>