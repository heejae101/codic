<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>댓글 기능 예제</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="../resources/script/boardcomment.js"></script>
</head>
<body>
<h1>게시글</h1>
<p><c:out value="${board.contents}"/></p>
<h1>댓글</h1>
<div>
    <input type="text" id="writer" placeholder="작성자">
    <br>
    <textarea id="contents" placeholder="댓글 내용"></textarea>
    <br>
    <button id="commentBtn">댓글 작성</button>
</div>
<div id="comment"></div>
<input type="hidden" id="boardId" value="${board.id}"/>
</body>
</html>
