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
			<h2>질문글</h2>
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
					<li><a href="?p=${startNum-5}&t=&q=" class="next-btn">이전</a></li>
				</c:if>
				<c:forEach var="i" begin="0" end="4">
					<li><a class="list-numA" href="?p=${startNum+i}&t=&q=">${startNum+i}</a></li>
				</c:forEach>
				<c:if test="${startNum+5 < lastNum}">
					<li><a href="?p=${startNum+5}&t=&q=" class="next-btn">다음</a></li>
				</c:if>
				<c:if test="${startNum+5 >= lastNum}">
					<li><a onclick="alert('다음 페이지가 없습니다.')" class="next-btn">다음</a></li>
				</c:if>
				
			</ul>
			<button id="write-bnt" onclick="location.href='/writeBoard'">글쓰기</button>
			
		</section>
	</div>
	<jsp:include page="/footer"></jsp:include>
	

</body>
</html>