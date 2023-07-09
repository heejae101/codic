<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<title>회원정보 수정</title>
</head>

<body>
<section id="update-section">
<h2>회원정보 수정</h2>
<form method="POST" action="../UpdateUserFormAction">
<div class="form_div">
<div>
<label for="email">이메일</label>
<input type="text" id=user_email name="user_email" value="${sessionScope.log1}" readonly>
</div>
<div class="pwd1">
<label for="pwd1">비밀번호</label>
<input type="password" 
	id="user_password" name="user_password" required>
	</div>
	<div class="pwd2">
	<label for="pwd2">새비밀번호</label>
	<input type="password" id="new_password" name="new_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합"  required >
    <span class="pwd_warning"> *특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</span>
    </div>
    

<div>
<label for="name">이름</label>
<input type="text" id="user_name" name="user_name" value="${requestScope.name}"readonly>
</div>
<div>
<label for="phone">휴대전화 번호</label>
<input type="text" id="user_phone_num" name="user_phone_num" value="${requestScope.phone}" readonly> 
</div>

<div>
<label for="nicekname">닉네임</label>
<input type="text" id="user_nickname" name="user_nickname" value="${requestScope.nickname}">
</div>  


  
</div>
<ul>

</ul>
<input type="submit" id="submit" value="회원정보 수정" onclick="checkValue(form)">

</form>
</section>

<script src="resources/script/validation_update.js"></script>

</body>
</html>