<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<section id="login-section">
<h2>회원 탈퇴</h2>
<form method="POST" action="Leave">
<div class="id-form">
<div>
	<input type="text" id="user_email" name="user_email" value="${sessionScope.email}" readonly>
</div>
<div>
	<input type="text" id="user_password" name="user_password" placeholder="비밀번호">
</div>

</div>
<input type="submit" id="submit" value="회원 탈퇴" onclick="checkValue(form)">
</form>
<a href="main">뒤로가기</a>

</section>

<script src="../resources/script/validation_login.js"></script>
</body>
</html>