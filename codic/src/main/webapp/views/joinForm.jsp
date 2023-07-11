<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/form_join.css">

<title>회원가입</title>
</head>
<body>

	<section id="join-section">
		<h2>회원가입</h2>
		<form method="POST" action="Join">
			<div class="form_div">
			<!-- 이메일 부분(아이디) -->
			    <div class="email">
				<label for="email">이메일</label>
					<input type="text" id="user_email" name="user_email"
						maxlength="320" placeholder="example@codic.com" autofocus>
					<button type="button" id="email_ch" onclick="emailAuthentication()">인증메일 보내기</button>
				
				<label for="email_num">인증번호 입력</label>
				<input type="text" name="code" id="code" maxlength="10" disabled="disabled" >
				<button type="button"id="code_ch" onclick="authCodeCheck()" disabled="disabled">인증</button>
				<ul>
				<li class="error" id="error-email">이메일을 입력해주세요</li>
				</ul>
				</div>

				<!-- 비밀번호 부분 -->
				<div class="pwd1">
				<label for="pwd1">
							비밀번호</label>
<input type="password" name="user_password"
	id="user_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합" required>
	<span class="pwd_warning"> *특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</span>
	<ul>
	<li class=error id="error-password">비밀번호는 필수정보입니다.</li>
	</ul>
	<span id="chkNotice1" size="1"></span>
	</div>
	
	<div class="pwd2">
	<label for="pwd2">비밀번호 확인</label>
	<input type="password" name="user_password_ch" id="user_password_ch"
	placeholder="비밀번호 확인" required> 
	<span id="chkNotice2" size="1"></span>
	</div>
</div>

<div>
<label for="name">이름</label>
	<input type="text" id="user_name" name="user_name">
</div>

<div>
<label for="nicekname">닉네임</label>
	<input type="text" id="user_nickname" name="user_nickname">
	<button type="button" id="user_nickname_dupl" name="user_nickname_dupl" onclick="duplCheck()">중복 체크</button>
</div>

<div class="label-wrapper">
<label for="agree_all">
<input type="checkbox" id="agree_all"  name="agree_all"><span>전체동의</span>
</label>
    
    <div>
	<label for="agree"><input type="checkbox" name="user_check" value="1" ><span>이용약관
		동의<strong>(필수)</strong></span></label>
		</div>
		
	
        <div>
		<label for="agree"><input type="checkbox" name="user_check" value="1" ><span>개인정보 수집,이용 동의<strong>(필수)</strong></span>
		</label> 
		</div>
		
		<div>
		<label for="agree"><input type="checkbox" name="user_check_s" ><span>이메일 수신<strong>(선택)</strong></span>
		</label>
		</div>
		 

</div>
<!-- 회원상태 -->
<input type="hidden" name="user_status" value="1">

<input type="submit" id="submit" value="회원가입" onclick="checkValue(form)">
</form>
	</section>
    
	<script src="../resources/script/validation_join.js"></script>

</body>
</html>