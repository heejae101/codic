<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>${result.board_text }</title>
</head>
<body>
	<div>
		<h3>제목 : ${result.board_title }</h3>
		<h6>작성자 : ${result.user_email }</h6>
		<h5>내용 : ${result.board_text }</h5>
	</div>
	<a href="/BoardUpdateRequest?user_email=${result.user_email}">글수정</a>


	<!-- 댓글 -->
	<div class="card my-4">
		<h5 class="card-header">Leave a Comment:</h5>
		<div class="card-body">
			<form name="comment-form" action="/BoardCommentFormAction" method="post" autocomplete="off">
				<div class="form-group">
					<input type="hidden" name="idx" th:value="*{idx}" />
					<textarea name="content" class="form-control" rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
	<script src="../resources/script/writeComment.js"></script>
</body>
</html>