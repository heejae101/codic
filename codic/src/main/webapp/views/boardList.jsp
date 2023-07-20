<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.user.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.board.Board"%>
<%@ page import="model.board.BoardDao"%>
<%@ page import="model.board.BoardResponseDto"%>
<%@ page import="model.board.BoardRequestDto"%>
<%@ page import="controller.BoardRequest"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../resources/script/board.js"></script>
<link href="../resources/style/reset.css" rel="stylesheet">
<link href="../resources/style/boardList.css" rel="stylesheet">
<meta charset="UTF-8">
<title>목록</title>

</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<div id="container">
		<jsp:include page="/menuBar"></jsp:include>

		<section id="board-list">
			<h2>질문 게시판</h2>
			<button id="write-bnt" onclick="location.href='/writeBoard'">글쓰기</button>
			<div id="board-box">
				<div id="board-sub-div">
					<ul id="board-sub-ul">
						<li id="board-nums">번호</li>
						<li class="view900">제목</li>
						<li class="view900">작성자</li>
						<li id="board-date">작성일</li>
						<li class="view900">조회</li>
					</ul>
				</div>
			</div>
			<div id="board-list-area"></div>
			<c:set var="page" value="${(param.p==null) ? 1 : param.p}" />
			<c:set var="totalBoard" value="${result.size()}" />
			<c:set var="startNum" value="${page-(page-1)%5 }" />
			<c:set var="lastNum" value="23" />
			

			<ul class="list-num">
				<c:if test="${page-(page-1)%5 > 1}">
					<li><a href="?p=${startNum-5}&t=&q=" class="next-btn"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
  					<path d="m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"/>
					</svg></a></li>
				</c:if>
				<c:forEach var="i" begin="0" end="4">
					<li><a class="list-numA" href="?p=${startNum+i}&t=&q=" onclick="checkValue()">${startNum+i}</a></li>
				</c:forEach>
				<c:if test="${startNum+5 < lastNum}">
					<li><a href="?p=${startNum+5}&t=&q=" class="next-btn"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  					<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
					</svg></a></li>
				</c:if>
				<c:if test="${startNum+5 >= lastNum}">
					<li><a onclick="alert('다음 페이지가 없습니다.')" class="next-btn"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
  					<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"/>
					</svg></a></li>
				</c:if>
				
			</ul>
			
			<input type="hidden" id="page" value="${page}" />
		</section>
	</div>
	<jsp:include page="/footer"></jsp:include>
	

</body>
</html>