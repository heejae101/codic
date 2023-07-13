<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 카카오 -->
<script type="text/javascript"
	src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/login.css">
<title>로그인</title>
</head>
<body>
	<section id="login-section">
    <div class="login">
		<h2>로그인</h2>
			<p class="join">
				회원이 아닌겨~? <a class="join-btn" href="/join">회원가입</a>
			</p>
			<form method="POST" action="../Login">
				<div class="login_1">
					<div class="login_box">
						<input type="email" id="user_email" name="user_email"
							placeholder="your@email.com" autofocus> <input
							type="password" id="user_password" name="user_password"
							placeholder="비밀번호">


						<ul>
							<li class="error" id="error-id">유효한 이메일을 입력해주세요.</li>
							<li class="error" id="error-password">비밀번호는 필수 정보입니다.
							<li>
						</ul>
					</div>

					<input type="button" id="sub-btn" value="로그인"
						onclick="checkValue(form)">
			</form>
		   
		
			<div class="find">
				<p class="find-btn"><a href="/find">비밀번호 찾기 ></a></p>
		</div>
		 </div>


		<!-- 간편 로그인 -->
		<div class="login_2">
			<div class="naver">
				<a href="#"> 네이버 로그인</a>
			</div>
			<div class="kakao">
				<a href="javascript:kakaoLogin()">카카오 로그인</a>
			</div>
		</div>
		</div>
		
	
	</section>

	<script src="../resources/script/validation_login.js"></script>


</body>
</html>