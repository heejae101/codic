<%@ page import="util.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<title>Insert title here</title>
</head>
<body>
	<%
	DBManager.getConnection();
	%>
	
	<h1>메인 Index${sessionScope.log}</h1>

	<a href="../BoardListRequest">질문게시판</a>
	
</body>
</html>