<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

			<c:forEach items="${list}" var="post">
				<p>${post.board_id}</p>


			</c:forEach>

			<ul id="board-list-ul" style="list-style-type: none; display: flex">
				<div id="contents-container">
					<p>씨발</p>
					<p><span>${id}</span></p>
	     			<p><span>${title}</span></p>
	         		<p><span>${writer}</span></p>
	         		<p><span>${date}</span></p>
	         		<p><span>${count}</span></p>
				</div>
			</ul>
		</section>

	</div>
	<script>
	$(function() {

		const num = 1;

		$.ajax({
			url : "/BoardRequest",
			type : "GET",
			data: { board_No: num },
			success : function(data) {
		        console.log(data);
			},
			error : function() {
				console.log("Error occurred");
			}
		}).done(function(response) {
			$('#contents-container').empty();
			
				const id = board.board_id;
				const title = board.board_title;
				const writer = board.user_email;
				const date = board.publisher;
				const count = board.board_view_count;
	
				$('#contents-container').append(
					`<div class="board">
	     			<p><span>${id}</span></p>
	     			<p><span>${title}</span></p>
	         		<p><span>${writer}</span></p>
	         		<p><span>${date}</span></p>
	         		<p><span>${count}</span></p>
	                </div>`
						);
				});
	});
</script>
</body>
</html>