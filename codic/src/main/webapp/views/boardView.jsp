<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../resources/stylereset.css" rel="stylesheet">
    <link href="../resources/style/boardView.css" rel="stylesheet">
<meta charset="UTF-8">
<title>${result.board_text}</title>
</head>
<body>
	<div class="board-content">
            <div class="board-title">
                <h3>제목 : ${result.board_title}</h3>
            </div>
            <div class="board-writer-btn">
                <div class="board-writer">
                    <span>작성자 : ${result.user_email}</span>
                </div>
                <div class="board-btn">
                    <button
                        onclick="window.location.href='/BoardUpdateRequest?user_email=${result.user_email}'">수정하기</button>

                </div>
                <div class="board-btn">
                    <button>삭제하기</button>
                </div>
            </div>
            <div class="board-text">
                <span>내용 : </span>
                <p>${result.board_text}zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz</p>
            </div>
        </div>
	<c:if test="${result.user_email == sessionScope.email}">
		<a href="/BoardUpdateRequest?user_email=${result.user_email}">글수정</a>
	</c:if>
	
	<div id="comment"></div>
	
	<!-- 댓글 -->
	<div class="create-comment-area">
		<input type="hidden" id="boardId" value="${result.board_id}">
		<input type="hidden" id="nickname" value="${sessionScope.nickname}">
		<input type="hidden" id="email" value="${sessionScope.email}">
		<textarea id="contents" placeholder="댓글 내용"></textarea>
		<button id="commentBtn">댓글 작성</button>
	</div>
<script src="../resources/script/boardcomment.js"></script>
</body>
</html>