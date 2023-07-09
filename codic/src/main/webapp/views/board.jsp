<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.user.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.board.Board"%>
<%@page import="model.board.BoardDao"%>
<%@page import="model.board.BoardResponseDto"%>
<%@page import="model.board.BoardRequestDto"%>
<%@page import="controller.BoardRequest"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>

	<h2>질문글</h2>

	<button onclick="location.href='write.jsp'">글쓰기</button>
	<div id="board-box">
		<div id="board-sub-div">
			<ul id="board-sub-ul" style="list-style-type: none; display: flex">
				<li style="width: 100px">글번호&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 100px">제목&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 100px">작성자&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 100px">작성일&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 100px">조회&ensp;&ensp;&ensp;&ensp;&ensp;</li>
			</ul>
		</div>
		<section id="board-list-sec">
		
			<c:out value="${board_id}" />
			<c:out value="${board_id}" />
			<c:out value="${requestScope.board}" />
			<c:out value="${requestScope.board_id}" />
			<c:out value="${requestScope.board.board_id}" />


			<p>${board.board_id}</p>
			<p>${request.board_id}</p>
			<p>${boardDto.board_title}</p>
			<p>${boardDto.user_email}</p>
			<p>${boardDto.current_timestamp}</p>
			<p>${boardDto.board_view_count}</p>

			<c:if test="${not empty board}">
				<h3>Board ID: ${board.board_id}</h3>
				<h3>User Email: ${board.user_email}</h3>
				<h3>Board Title: ${board.board_title}</h3>
				<h3>Board Text: ${board.board_text}</h3>
				<h3>Board View Count: ${board.board_view_count}</h3>
			</c:if>

			<ul id="board-list-ul" style="list-style-type: none; display: flex">
				<div id="contents-container"></div>
			</ul>
		</section>

	</div>
	<script>
		$(function() {

			const num = 4;

			$.ajax({
				url : "/BoardRequest",
				type : "GET",
				data : {
					board_No : num
				},
				success : function(data) {
					console.log(data);
				},
				error : function() {
					console.log("Error occurred");
				}
			})

		});
	</script>
</body>
</html>