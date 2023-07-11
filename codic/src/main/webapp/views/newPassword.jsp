<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로운 비밀번호 설정</title>
</head>
<body>
<h2>새로운 비밀번호를 입력해주세요</h2>
<form method="POST" action="/UpdateUser">
<div class="pwd2">
	<label for="pwd2">새 비밀번호</label>
	<input type="password" id="new_password" name="new_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합"  >
    <span class="pwd_warning"> *특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</span>
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
	<input type="button" id="submit" value="저장" onclick="checkValue(form)">

</form>

</body>
</html>