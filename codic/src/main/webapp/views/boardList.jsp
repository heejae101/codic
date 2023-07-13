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
	<link href="../resources/style/reset.css" rel="stylesheet">
	<link href="../resources/style/boardList.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<meta charset="UTF-8">

	<title>목록</title>
</head>

<body>


	
	<div id="board-box">
		<h2>질문 게시판</h2>
		<div id="board-sub-div">
			<ul id="board-sub-ul">
				<li id="board-nums">글번호</li>
				<li id="board-title">제목</li>
				<li id="board-writer">작성자</li>
				<li id="board-date">작성일자</li>
				<li id="board-views">조회수</li>
			</ul>
		</div>
		<section id="board-list-sec">


			<c:forEach var="r" items="${result}" varStatus="loop">
				<ul id="board-sub-ul">
					<li id="board-nums">${r.board_id}</li>
					<li id="board-title"><a href="/BoardContentView?board_id=${r.board_id}">${r.board_title}</a></li>
					<li id="board-writer">${r.user_email}</li>
					<li id="board-date">${r.modified_timestamp}</li>
					<li id="board-views">${r.board_view_count}</li>
				</ul>
			</c:forEach>

		</section>
		<div>
			<button id="write-bnt" onclick="location.href='/writeBoard'">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16" style="vertical-align: middle; margin-bottom: 5px;">
					<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
					<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
				</svg>
				글쓰기
			</button>
		</div>
	</div>
	
		<script src="../resources/script/board.js"></script>
</body>

</html>