<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/delete.css">
<title>회원 탈퇴</title>
</head>
<body>
	<section id="delete-section">
		<div class="delete">
			<h2>${sessionScope.log}님정말 떠나시나요?</h2>
			<form method="POST" action="/Leave">
				<div>
					<input type="text" id="user_email" name="user_email"
						value="${sessionScope.email}" readonly>
				</div>
				<div>
					<input type="password" id="user_password" name="user_password"
						placeholder="비밀번호">
				</div>
				<ul>
					<li class="error" id="error-password">비밀번호를 입력해주세요.
					<li>
				</ul>

				<input type="button" id="delete-btn" value="회원 탈퇴"
					onclick="checkValue(form)">
			</form>

			<a class="back" href="javascript:window.history.back();">뒤로가기></a>
		</div>

		<input type="submit" id="submit" value="회원 탈퇴"
			onclick="checkValue(form)">
		</form>
		<a href="main">뒤로가기</a>
	</section>
	<script src="../resources/script/validation_delete.js"></script>
</body>
</html>