<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<title>로그인</title>
</head>
<body>

<section id="login-section">
<h2>로그인</h2>
<form method="POST" action="../LoginFormAction">
<div class="id-form">
<div>
	<input type="text" id="user_email" name="user_email" placeholder="your@email.com" autofocus>
</div>
<div>
	<input type="text" id="user_password" name="user_password" placeholder="비밀번호">
</div>

</div>


<ul>
<li class="error" id="error-id">유효한 이메일을 입력해주세요.</li>
<li class="error" id="error-password">비밀번호는 필수 정보입니다.<li> 
</ul>

<input type="submit" id="submit" value="로그인" onclick="checkValue(form)">
<span>비밀번호를 잊어버리셨나요?</span>


</form>
</section>

<script src="../resources/script/validation_login.js"></script>

</body>
</html>