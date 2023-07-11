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
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>

	<h2>질문글</h2>

	<button onclick="location.href='/writeBoard'">글쓰기</button>
	<div id="board-box">
		<div id="board-sub-div">
			<ul id="board-sub-ul"
				style="list-style-type: none; display: flex; text-align: center">
				<li style="width: 100px">글번호&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 300px">제목&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 100px">작성자&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 100px">작성일&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<li style="width: 100px">조회&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				<br>

			</ul>
		</div>
		<section id="board-list-sec">


			<c:forEach var="r" items="${result}" varStatus="loop">
				<ul id="board-sub-ul"
					style="list-style-type: none; display: flex; text-align: center">
					<li style="width: 100px">${r.board_id}&ensp;&ensp;&ensp;&ensp;&ensp;</li>
					<li style="width: 300px"><a
						href="/BoardContentView?board_id=${r.board_id}">${r.board_title}</a>&ensp;&ensp;&ensp;&ensp;&ensp;</li>
					<li style="width: 100px">${r.user_email}&ensp;&ensp;&ensp;&ensp;&ensp;</li>
					<li style="width: 100px">${r.modified_timestamp}&ensp;&ensp;&ensp;&ensp;&ensp;</li>
					<li style="width: 100px">${r.board_view_count}&ensp;&ensp;&ensp;&ensp;&ensp;</li>
				</ul>
			</c:forEach>



		</section>

		<script src="../resources/script/board.js"></script>
</body>
</html>