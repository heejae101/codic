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
                <p>${result.board_text}</p>
            </div>
        </div>
	<c:if test="${result.user_email == sessionScope.email}">
		<button onclick="updateBoard(this)">수정</button>
		<button onclick="deleteBoard()">삭제</button>
		</div>
	</c:if>

	<div id="comment"></div>

	<!-- 댓글 -->
	<div class="create-comment-area">
		<c:choose>
			<c:when test="${empty sessionScope.nickname}">
				<span id="writer" value="guest">로그인 후 작성 가능합니다.</span>
			</c:when>
			<c:otherwise>
				<span id="writer" value="sessionScope.nickname">${sessionScope.nickname}</span>
			</c:otherwise>
		</c:choose>
		<textarea id="contents" placeholder="댓글 내용"></textarea>
		<button id="commentBtn">댓글 작성</button>
	</div>
	<script src="../resources/script/boardcomment.js"></script>
</body>
</html>