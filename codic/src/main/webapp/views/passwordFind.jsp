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
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
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
			<label for="email" class="title">이메일</label> 
				<div class="email_send_box">
					<input type="text"
						class="square" id="user_email" name="user_email" maxlength="320"
						placeholder="your@email.com" autofocus> <input
						type="button" class="square" id="email_ch"
						onclick="emailAuthentication()" value="인증메일 보내기">
				</div>
					<ul>
						<li class="err" id="chkEmail" size="1"></li>
						<li class="error" id="error-email">이메일을 입력해주세요.</li>
					</ul>
            <div class="email-num-box">
            <label for="email_num" class="title">인증번호 입력</label>
				<div class="email_num_box">
					 <input
						type="text" class="square" name="code" id="code" maxlength="10">
					<input type="button" id="code_ch" onclick="authCodeCheck()"
						value="인증">
				</div>
				</div>
				<div class="btn_box">
					<input type="button" id="find-btn" value="다음"
						onclick="checkValue(form)">
				</div>
			</div>
		</form>
	</section>
	<jsp:include page="/footer"></jsp:include>
	<script src="../resources/script/passwordFind.js"></script>

</body>
</html>