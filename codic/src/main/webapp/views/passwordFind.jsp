<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 스타일 연결 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/find.css">
<title>비밀번호 찾기</title>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<section id="find-section">
		<div class="text_box">
			<h2 class="find_text">비밀번호 찾기</h2>
			<p class="comment">비밀 번호 재설정을 위해 이메일을 입력해주세요.</p>
		</div>
		<form id=find method="POST">
			<div class="email_box">
				<div class="email_send_box">
					<label for="email" class="title">이메일</label> <input type="text"
						class="square" id="user_email" name="user_email" maxlength="320"
						placeholder="your@email.com" autofocus> <input
						type="button" class="square" id="email_ch"
						onclick="emailAuthentication()" value="인증메일 보내기">
				</div>
				<div class="err_box">
						<span class="err" id="chkEmail" size="1"></span>
						</div>


				<div class="email_num_box">
					<label for="email_num" class="title">인증번호 입력</label> <input
						type="text" class="square" name="code" id="code" maxlength="10">
					<input type="button" id="code_ch" onclick="authCodeCheck()"
						value="인증">
				</div>
				<div class="btn_box">
					<input type="button" id="find-btn" value="다음">
				</div>
			</div>
		</form>

	</section>
	<jsp:include page="/footer"></jsp:include>

	<script src="../resources/script/passwordFind.js"></script>

</body>
</html>