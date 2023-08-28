<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/joinForm.css">


<title>회원가입</title>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<section id="join-section">
	<div id="wrap">
	<div class="section">
		<div class="form_box">
		<form id="join" method="POST" action="Join">
		<div class="form-box">
		<h2 class="join_text">회원가입</h2>
		     <div class="input_box">
			<!-- 이메일 부분(아이디) -->
			<div class="email">
			<label for="email" class="title">이메일<span class="required">(필수)</span></label>
				    <div class="email_box"> 
					<input type="text" class="square" id="user_email" name="user_email"
						maxlength="320" placeholder="example@codic.com" autofocus><input
						type="button" id="user_email_dupl" name="user_email_dupl"
						value="중복 확인" onclick="chkEmail()">
					</div>
					<div class="err-box">
					<ul>
						<li class="error" id="error-email">이메일을 입력해주세요.</li>
					</ul>
					<span class="err" id="chkEmail" size="1"></span> <span class="err"
						id="chkMsgEmail" size="1"></span>
						</div>
						</div>
				
                
				<label for="email_num" class="title">인증번호</label>
				  <div class="code_box">
				<input type="text" name="code" class="square" id="code"
						maxlength="10"> <input type="button" class="square"
						id="email_ch" onclick="emailAuthentication()" value="인증메일 보내기">
					
				</div>
				<div class="code-btn">
						<input type="button" id="code_ch" onclick="authCodeCheck()"
							value="인증">
					</div>
		

			<!-- 비밀번호 부분 -->
			<div class="pwd1">
				<label for="pwd1" class="title">비밀번호<span class="required">(필수)</span></label>
				<div class="pwd1_box">
					<input type="password" name="user_password" class="square"
						id="user_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합">
					
				</div>
				<div clss="pwd-err">
				<p class="err">*특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</p>

					<ul>
						<li class="error" id="error-password">비밀번호는 필수정보입니다.</li>
					</ul>
					<span class="err" id="chkNotice1" size="1"></span>
					</div>
			</div>

			<div class="pwd2">
				<label for="pwd2" class="title">비밀번호 확인</label>
				<div class="pwd2_box">
					<input type="password" name="user_password_ch" class="square"
						id="user_password_ch" placeholder="비밀번호 확인"> 
						<div clss="err-box">
						<span
						class="err" id="chkNotice2" size="1"></span>
						</div>
				</div>
			</div>


			<div>
				<label for="name" class="title">이름<span class="required">(필수)</span></label>
				<div class="name_box">
					<input type="text" class="square" id="user_name" name="user_name">

					<ul>
						<li class="error" id="error-name">이름은 필수정보입니다.</li>
					</ul>
				</div>
			</div>

			<div>
				<label for="nickname" class="title">닉네임<span
					class="required">(필수)</span></label>
				<div class="nickname_box">
					<input type="text" class="square" id="user_nickname"
						name="user_nickname"> <input type="button"
						id="user_nickname_dupl" name="user_nickname_dupl" value="중복 확인"
						onclick="duplCheck()">
                      </div>
					<ul>
						<li class="error" id="error-nickname">닉네임은 필수정보입니다.</li>
					</ul>
					<span class="err" id="chkMsg" size="1"></span>
				
			</div>

			<div class="label-wrapper">
				<label for="agree_all" class="title">이용약관 동의<span
					class="required">(필수)</span></label>
				<div class="agr">
					<input type="checkbox" id="agree_all" name="agree_all"><span
						class="agr_text">전체동의</span>
				</div>


				<div class="agr">
					<label for="agree"><input type="checkbox" id="user_check1"
						name="user_check" value="1"><span class="agr_text"><a
							href="term" class="term_title">이용약관</a> 동의<strong>(필수)</strong> </span></label>
				</div>

				<div class="agr">
					<label for="agree"><input type="checkbox" id="user_check2"
						name="user_check" value="1"><span class="agr_text"><a
							href="term2" class="term_title">개인정보 처리방침</a> 동의<strong>(필수)</strong>
					</span> </label>
				</div>

				<div class="agr">
					<label for="agree"><input type="checkbox" id="user_check3"
						name="user_check"><span class="agr_text">이메일 수신<strong>(선택)</strong></span>
					</label>
				</div>

			</div>
			<!-- 회원상태 -->
			<input type="hidden" name="user_status" value="1"> 
			<!--  -->
			<input type="hidden" name="user_profile" value="../resources/img/nomalProfile.png">
			<div class="join-btn-box">
			<input
				type="button" id="join-btn" value="회원가입" onclick="checkValue(form)">
				</div>
         </div>
         </div>
		</form>
		</div>
		<div class="back_box">
			<a href="main"><span class="back">메인페이지로 이동</span></a>
		</div>
		</div>
		</section>
	<jsp:include page="/footer"></jsp:include>

	<script src="../resources/script/validation_join.js"></script>
	
</body>
</html>