<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/find.css">
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<title>비밀번호 바꾸기</title>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<section id="find-section">
	<div class="text_box">
		<h2 class="find_text">새로운 비밀번호를 입력해주세요</h2>
		</div>
		<form id=find method="POST" action="/UpdateNewPassword">
			<div class="pwd_box">
					<label for="pwd2" class="title">새 비밀번호</label> 
					<div class="pwd2_box"><input
						type="password" class="square" id="new_password"
						name="new_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합">
				</div>
				<div class="err-box">
				<p class="err">*특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</p>
					<span class="err" id="chkNotice1" size="1"></span>
					<ul>
						<li class="error" id="error-password">새 비밀번호를 입력해주세요.</li>
					</ul>
					</div>

			
					<label for="pwd3" class="title">새 비밀번호 확인</label> 
						<div class="pwd3_box"><input
						type="password" class="square" name="user_password_ch"
						id="user_password_ch" placeholder="비밀번호 확인">
				</div>
				<div>
						<span class="err" id="chkNotice2" size="1"></span>
					</div>
				<div class="btn_box">
				<input type="button" id="find-btn" value="저장"
					onclick="checkValue(form)">
					</div>
			</div>
		</form>

	</section>
	<jsp:include page="/footer"></jsp:include>
	<script src="../resources/script/newPassword.js"></script>

</body>
</html>