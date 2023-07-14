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
<link rel="stylesheet" href="../resources/style/update.css">

<title>회원정보 수정</title>
</head>

<body>

<section id="update-section">

<h2>회원정보 수정</h2>
<form method="POST" action="/UpdateUser">

<label for="email" class="title">이메일</label>
<div class="email_box">
<input type="text" id=user_email name="user_email" value="${sessionScope.email}" readonly>
</div>
<div class="pwd1">
<label for="pwd1" class="title">비밀번호</label>
<div class="pwd1_box">
<input type="password" 
	id="user_password" name="user_password" >
	</div>
	</div>
	<div class="pwd2">
	<label for="pwd2" class="title">새 비밀번호</label>
	<div class="pwd2_box">
	<input type="password" id="new_password" name="new_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합"  >
    <p class="err"> *특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</p>
    <ul>
	<li class="error" id="error-password">비밀번호는 필수정보입니다.</li>
	</ul>
	<span id="chkNotice1" size="1"></span>
	</div>
    </div>
    
    <div class="pwd3">
	<label for="pwd3" class="title">새 비밀번호 확인</label>
	<div class="pwd3_box">
	<input type="password" name="user_password_ch" id="user_password_ch"
	placeholder="비밀번호 확인" > 
	<span class="err" id="chkNotice2" size="1"></span>
	</div>
	</div>
    
<div>
<label for="name" class="title">이름</label>
<div class="name_box">
<input type="text" id="user_name" name="user_name" value="${sessionScope.name}"readonly>
</div>
</div>

<div>
<label for="nicekname" class="title">닉네임</label>
<div class="nickname_box">
<input type="text" id="user_nickname" name="user_nickname" value="${requestScope.nickname}">
<input type="button" id="user_nickname_dupl" name="user_nickname_dupl" value="중복 체크" onclick="duplCheck()"></input>
<ul>
<li class="error" id="error-nickname">닉네임은 필수정보입니다.</li>
</ul>
<span class="err" id="chkMsg" size="1"></span>
</div>
</div>  



<input type="button" id="update-btn" value="회원정보 수정" onclick="checkValue(form)">

</form>
<a class="back" href="javascript:window.history.back();">뒤로가기></a>
</section>


	<script src="../resources/script/validation_update.js"></script>

</body>
</html>