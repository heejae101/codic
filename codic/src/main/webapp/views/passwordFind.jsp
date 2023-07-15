<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/find.css">
<title>비밀번호 찾기</title>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<section id="find-section">
		<h2>비밀번호 찾기</h2>
		<p class="comment">비밀 번호 재설정을 위해 이메일을 입력해주세요.</p>
		<form method="POST">
		<div class="form_box">
			<div class="email_box">
				<label for="email" class="title">이메일</label> <input type="text"
					id="user_email" name="user_email" maxlength="320"
					placeholder="your@email.com" autofocus>
			</div>
			
			<div class="email_num_box">
				<label for="email_num" class="title">인증번호 입력</label> 
				<input type="text" name="code" id="code" maxlength="10"> 
				</div>
				<input type="button"
					id="code_ch" onclick="authCodeCheck()" value="인증">
			
			

			<input type="button" id="find-btn" value="다음">
			</div>
		</form>
	</section>

</body>
</html>