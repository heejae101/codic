<%@ page import="util.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DBManager.getConnection();
%>
<h1>메인 Index</h1>
<a href="views/board.jsp">게시판리스트</a>
</body>
</html>