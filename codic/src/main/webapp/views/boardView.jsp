<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="../resources/style/reset.css" rel="stylesheet">
<link href="../resources/style/boardView.css" rel="stylesheet">
<meta charset="UTF-8">
<title>질문게시판</title>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<div id="container">
		<jsp:include page="/menuBar"></jsp:include>
		<div id="container-view">
			<div class="board-content">
				<div class="board-title">
					<h3>제목 : ${result.board_title}</h3>
				</div>
				<div class="board-writer-btn">
					<div class="board-writer">
						<span>작성자 : ${result.user_nickname}</span>
					</div>
					<c:if test="${sessionScope.nickname == result.user_nickname}">
						<div class="board-btn" id="bnt1">
							<button onclick="deleteBoard()">삭제하기</button>
						</div>
						<div class="board-btn" id="bnt2">
							<button
								onclick="window.location.href='/BoardUpdateRequest?boardId=${result.board_id}'">수정하기</button>
						</div>
					</c:if>
				</div>

				<div class="board-text">
					<p>${result.board_text}</p>
				</div>
			</div>

			<div id="comment"></div>

			<!-- 댓글 -->
			<div class="create-comment-area">
				<span id="writer-comment" value="${sessionScope.nickname}">${sessionScope.nickname}</span>
				<c:choose>
					<c:when test="${empty sessionScope.nickname}">
						<textarea id="contents" placeholder="로그인 후 작성 가능합니다."></textarea>
					</c:when>
					<c:otherwise>
						<textarea id="contents" placeholder="댓글 내용"></textarea>
					</c:otherwise>
				</c:choose>
				<button id="commentBtn">댓글 작성</button>
			</div>
		</div>
	</div>
	<jsp:include page="/footer"></jsp:include>
	<script src="../resources/script/boardcomment.js"></script>
</body>
</html>