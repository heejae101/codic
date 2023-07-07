<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Content </title>
</head>
<body>
	<h1>Content</h1>
	<c:choose>
		<c:when test="${empty result}">
			<p>No content found.</p>
		</c:when>
		<c:otherwise>
			<ul>
				<li>id : ${result.content_id}</li>
				<li>category number: ${result.category_no}</li>
				<li>title : ${result.content_title}</li>
				<li>text : ${result.content_text}</li>
				<li>views : ${result.content_views}</li>
				<li>creation date : ${result.content_creation_date}</li>
			</ul>
		</c:otherwise>
	</c:choose>
</body>
</html>
