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
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
	<section id="board-list">
		<h2>질문글</h2>
		<div id="board-box">
			<div id="board-sub-div">
				<ul id="board-sub-ul">
					<li>글번호</li>
					<li>제목</li>
					<li>작성자</li>
					<li>작성일</li>
					<li>조회</li>
				</ul>
			</div>
		</div>
		<div id="board-list-area"></div>
		<button onclick="location.href='/writeBoard'">글쓰기</button>
	</section>

</body>
</html>