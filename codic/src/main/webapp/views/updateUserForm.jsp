<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/joinForm.css">

<title>회원정보 수정</title>
</head>

<body>
<section id="update-section">
<h2>회원정보 수정</h2>
<form method="POST" action="/UpdateUser">
<div class="form_div">
<div>
<label for="email">이메일</label>
<input type="text" id=user_email name="user_email" value="${sessionScope.log1}" readonly>
</div>
<div class="pwd1">
<label for="pwd1">비밀번호</label>
<input type="password" 
	id="user_password" name="user_password" >
	</div>
	<div class="pwd2">
	<label for="pwd2">새 비밀번호</label>
	<input type="password" id="new_password" name="new_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합"  >
    <span class="pwd_warning"> *특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</span>
    <ul>
	<li class=error id="error-password">비밀번호는 필수정보입니다.</li>
	</ul>
	<span id="chkNotice1" size="1"></span>
    </div>
    
    <div class="pwd3">
	<label for="pwd3">새 비밀번호 확인</label>
	<input type="password" name="user_password_ch" id="user_password_ch"
	placeholder="비밀번호 확인" > 
	<div>
	<span id="chkNotice2" size="1"></span>
	</div>
	</div>
    

<div>
<label for="name">이름</label>
<input type="text" id="user_name" name="user_name" value="${sessionScope.log2}"readonly>
</div>

<div>
<label for="nicekname">닉네임</label>
<input type="text" id="user_nickname" name="user_nickname" value="${requestScope.nickname}">
<input type="button" id="user_nickname_dupl" name="user_nickname_dupl" value="중복 체크" onclick="duplCheck()"></input>
<ul>
	<li class=error id="error-nickname">닉네임은 필수정보입니다.</li>
	</ul>
	<span id="chkMsg" size="1"></span>
</div>  


</div>
<ul>

</ul>
<input type="button" id="submit" value="회원정보 수정" onclick="checkValue(form)">

</form>
<a href="javascript:window.history.back();">뒤로가기</a>
</section>

<script src="../resources/script/validation_update.js"></script>

</body>
</html>