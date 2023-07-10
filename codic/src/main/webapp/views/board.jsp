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
			<c:if test="${not empty board}">
				<ul id="board-list-ul" style="list-style-type: none; display: flex">
					<li>${board.board_id}</li>
					<a href="">${board.board_title}</a>
					<li>${board.user_email}</li>
					<li>${board.modified_timestamp}</li>
					<li>${board.board_view_count}</li>
				</ul>
			</c:if>
		</section>
	</div>
	<script>
   $(function() {
       const num = 13;
       $.ajax({
           url : "/BoardRequest",
           type : "GET",
           data : {
               board_No : num
           },
           success : function(data) {
               console.log(data);
               // 태그를 만들어서 해당 위치에 삽입
               $("body").html(data);
           },
           error : function() {
               console.log("Error occurred");
           }
       })
   	});
   </script>
</body>
</html>