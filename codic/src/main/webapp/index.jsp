<%@ page import="util.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%
DBManager.getConnection();
%>
<h1>메인 Index${sessionScope.log}</h1>
	<div>
			<li><a href="views/board.jsp">질문게시판</a>
	</div>
<script src="../resources/script/board.js"></script>
</body>
</html>