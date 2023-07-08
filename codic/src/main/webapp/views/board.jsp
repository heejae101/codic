<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<ul id="board-sub-ul" style="list-style-type: none; display:flex">
				<li style= "width:100px">글번호&ensp;&ensp;&ensp;&ensp;&ensp;</li> 
				<li style= "width:100px">제목&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style= "width:100px">작성자&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style= "width:100px">작성일&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style= "width:100px">조회&ensp;&ensp;&ensp;&ensp;&ensp;</li>
			</ul>
		</div>
		<section id="board-list-sec">
		
		<form method="get" action="../BoardRequest">
		
		<p>${requestScope.board.board_id}</p>
		<p>${requestScope.board.user_email }</p>
		<p>${requestScope.board.board_title }</p>
		<p>${requestScope.board.board_text }</p>
		<p>${requestScope.board.board_view_count }</p>
		<p>${requestScope.board.current_timestamp }</p>
		<p>${requestScope.board.modified_timestamp }</p>
		</form>
		
			<ul id="board-list-ul" style="list-style-type: none; display:flex">
				<li style= "width:100px">1&ensp;&ensp;&ensp;&ensp;</li>
				<li style= "width:100px">2&ensp;&ensp;&ensp;&ensp;</li>
				<li style= "width:100px">3&ensp;&ensp;&ensp;&ensp;</li>
				<li style= "width:100px">4&ensp;&ensp;&ensp;&ensp;</li>
				<li style= "width:100px">5&ensp;&ensp;&ensp;&ensp;</li>

			</ul>
		</section>
	</div>
	<script src="resources/script/board.js"></script>
</body>
</html>