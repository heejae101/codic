<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/joinForm.css">

<title>회원가입</title>
</head>
<body>

	<section id="join-section">
		<h2>회원가입</h2>
		<form method="POST" action="Join">
			<div class="form_div">
				<!-- 이메일 부분(아이디) -->
				<div class="email">
					<label for="email">이메일</label> <input type="text" id="user_email"
						name="user_email" maxlength="320" placeholder="example@codic.com"
						autofocus> <input type="button" id="user_email_dupl"
						name="user_email_dupl" value="중복 확인" onclick="chkEmail()">
					<input type="button" id="email_ch" onclick="emailAuthentication()"
						value="인증메일 보내기"> <label for="email_num">인증번호 입력</label> <input
						type="text" name="code" id="code" maxlength="10"
						disabled="disabled"> <input type="button" id="code_ch"
						onclick="authCodeCheck()" disabled="disabled" value="인증">

					<ul>
						<li class="error" id="error-email">이메일을 입력해주세요</li>
					</ul>
					<span id="chkEmail" size="1"></span> <span id="chkMsgEmail"
						size="1"></span>
				</div>

				<!-- 비밀번호 부분 -->
				<div class="pwd1">
					<label for="pwd1">비밀번호</label> <input type="password"
						name="user_password" id="user_password"
						placeholder="4-10자의 영문, 특수문자, 숫자 조합"> <span
						class="pwd_warning"> *특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</span>
					<ul>
						<li class=error id="error-password">비밀번호는 필수정보입니다.</li>
					</ul>
					<span id="chkNotice1" size="1"></span>
				</div>

				<div class="pwd2">
					<label for="pwd2">비밀번호 확인</label> <input type="password"
						name="user_password_ch" id="user_password_ch"
						placeholder="비밀번호 확인"> <span id="chkNotice2" size="1"></span>
				</div>
			</div>

			<div>
				<label for="name">이름</label> <input type="text" id="user_name"
					name="user_name">
				<ul>
					<li class=error id="error-name">이름은 필수정보입니다.</li>
				</ul>
			</div>

			<div>
				<label for="nicekname">닉네임</label> <input type="text"
					id="user_nickname" name="user_nickname"> <input
					type="button" id="user_nickname_dupl" name="user_nickname_dupl"
					value="중복 확인" onclick="duplCheck()">
				<ul>
					<li class=error id="error-nickname">닉네임은 필수정보입니다.</li>
				</ul>
				<span id="chkMsg" size="1"></span>
			</div>

			<div class="label-wrapper">
				<label for="agree_all"> <input type="checkbox"
					id="agree_all" name="agree_all"><span>전체동의</span>
				</label>

				<div>
					<label for="agree"><input type="checkbox" id="user_check1"
						name="user_check" value="1"><span>이용약관 동의<strong>(필수)</strong></span></label>
				</div>

				<div>
					<label for="agree"><input type="checkbox" id="user_check2"
						name="user_check" value="1"><span>개인정보 수집,이용 동의<strong>(필수)</strong></span>
					</label>
				</div>

				<div>
					<label for="agree"><input type="checkbox" id="user_check3"
						name="user_check"><span>이메일 수신<strong>(선택)</strong></span>
					</label>
				</div>

			</div>
			<!-- 회원상태 -->
			<input type="hidden" name="user_status" value="1"> <input
				type="button" id="sub" value="회원가입" onclick="checkValue(form)">
		</form>

		<a href="javascript:window.history.back();">뒤로가기</a>
	</section>

	<script src="../resources/script/validation_join.js"></script>

</body>
</html>