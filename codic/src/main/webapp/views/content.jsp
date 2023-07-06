<%-- 메인 화면 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
</head>
<body>
  <h1>Content</h1>
  <ul>
    <li>title: ${result.title}</li>
    <li>text: ${result.text}</li>
    <li>views: ${result.views}</li>
    <li>creation date: ${result.creationDate}</li>
  </ul>
</body>
</html>
