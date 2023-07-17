<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<input type="checkbox" id="hamburger" /> <label for="hamburger">
					<span></span> <span></span> <span></span>
				</label>
				<div class="sidebar">
					<h2 style="text-align: center; position: relative; top: 75px;">
						<a href="#">카테고리</a>
					</h2>
					<hr
						style="position: relative; top: 100px; border: solid 1px #94358c;">
					<ul class="nav_mobile">
						<li><a href="#">HTML</a></li>
						<li><a href="#">CSS</a></li>
						<li><a href="#">JAVASCRIPT</a></li>
						<li><a href="#">JAVA</a></li>
						<li><a href="#">DATABASE</a></li>
						<li><a href="#">질문게시판</a></li>
						<li><a href="#">로드맵</a></li>
					</ul>
				</div>
			</div>

			<div class="top-left">
				<div class="logo">
					<a href="main">
						<h1>CODIC</h1>
					</a> <a href="main"><svg xmlns="http://www.w3.org/2000/svg"
							width="16" height="16" fill="currentColor" class="bi bi-chat"
							viewBox="0 0 16 16">
					<path
								d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
				  </svg></a>
				</div>
				<div class="board">
					<div>
						<a href="#">카테고리
							<ul class="menu1">
								<li><a href="#">HTML</a></li>
								<li><a href="#">CSS</a></li>
								<li><a href="#">JAVASCRIPT</a></li>
								<li><a href="#">JAVA</a></li>
								<li><a href="#">DATABASE</a></li>
							</ul>
						</a>
					</div>
					<a href="">로드맵</a>
					<div>
						<a href="/boardList">질문게시판
							<ul class="menu2">
								<li><a href="#">전체 글</a></li>
								<li><a href="#">내가 작성한 질문</a></li>
							</ul>
						</a>
					</div>
				</div>
			</div>

			<div class="top-right">
				<c:choose>
					<c:when test="${ empty sessionScope.nickname }">
						<div class="user">
							<a href="/login">로그인/</a>
							<!-- 로그인 시 이미지로 변환-->
							<img src="heart.png" style="display: none;"> <a
								href="/join">회원가입</a>
							<!-- 로그인 시 이미지로 변환-->
							<img src="circle-user.png" style="display: none;">
						</div>
					</c:when>
					<c:when  test="${ !empty sessionScope.nickname }">
						<!-- TODO 마이페이지 만들기  -->
						<a><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
							fill="currentColor" class="bi bi-person-circle"
							viewBox="0 0 16 16">
  							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
  							<path fill-rule="evenodd"
								d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
							<ul class="menu3">
							<li><a href="/myPage">마이페이지</a>
							<li><a href="/Logout">로그아웃</a></li>
							<li><a href="/update">회원정보 수정</a></li>
							<li><a href="/leave">회원탈퇴</a></li>
						</ul></svg></a>
					</c:when>
					<c:otherwise></c:otherwise>
				</c:choose>
				<div class="search" id="search-bar">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				<path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
			</svg>
					<input type="text" id="text" name="text"
						onkeypress="checkValue(form)">
				</div>

			</div>
		</header>
		<script src="../resources/script/search.js"></script>
	</div>
</body>
</html>