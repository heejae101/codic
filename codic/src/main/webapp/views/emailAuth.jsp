<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="EmailCheck" action="/EmailVerification" method="post">
		<input type="text" name="email" id="email" placeholder="이메일 주소 입력">
		<input type="button" value="전송" onclick="emailCheck()"></button>
	</form>
	<form id="TokenCheck" action="/CheckEmailAuthToken" method="post">
		<input type="text" id="token-check" name="inputToken" placeholder="인증번호를 입력해주세요.">
		<input type="hidden" id="session-token" name="sessionToken">
		<input type="hidden" id="session-validTime" name="sessionValidTime">
  		<button onclick="tokenCheck('${sessionScope.authToken}','${sessionScope.validTime}')">인증하기</button>
	</form>
  	<script src="../resources/script/tokenCheck.js"></script>
</body>
</html>