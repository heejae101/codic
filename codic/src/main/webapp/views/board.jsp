<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.board.*, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.board.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.board.BoardDao"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>

	<h2>게시글 목록</h2>
	<c:forEach var="board" items="${list}">
	<p>${board }</p>
	</c:forEach>
	
	<button onclick ="location.href='write.jsp'">글쓰기</button>
	<div id="board-box">
		<div id="board-sub-div">
			<ul id="board-sub-ul" style="list-style-type: none;"}>
				<li style="display:inline-block;">글번호</li> 
				<li style="display:inline-block;">제목</li>
				<li style="display:inline-block;">작성자</li>
				<li style="display:inline-block;">작성일</li>
				<li style="display:inline-block;">조회</li>
			</ul>
		</div>
		<section id="board-list-sec">
			<ul id="board-list-ul" style="list-style-type: none; display:flex">
				<li>1</li><bt>
				<li>2</li>
				<li>3</li>
				<li>4</li>
				<li>5</li>
			</ul>
		</section>
	</div>
	<script src="resources/script/board.js"></script>
</body>
</html>