<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>


</head>
<body>
<section id="update-section">
<h2>회원정보 수정</h2>
<form method="POST" action="../updateUserFormAction">
<div class="form_div">
<div>
<input type="text" id=user_email name="user_email" value="${sessionScope.log}" readonly>
</div>
<div class="pwd1">
<label for="pwd1">비밀번호</label>
<input type="password" name="user_password"
	id="user_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합" required>
	<span class="pwd_warning"> *특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</span>
	</div>
	<div class="pwd2">
	<label for="pwd2">새비밀번호</label>
	<input type="password" name="new_password_" id="new_password">
    </div>
<div class="nickname">
<input type="text" id="user_nickname" name="user_nickname" value="${requestScop.nickname}" readonly>
</div>    
</div>
<ul>

</ul>

</form>
</section>
</body>
</html>