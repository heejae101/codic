<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>회원가입</title>
</head>
<body>

<section id="join-section">
<h2>회원가입</h2>
<form method="POST" action="../JoinFormAction">
<div class="form_div">
<div>
<input type="text" id="user_email" name="user_email" placeholder="이메일을 입력해주세요" autofocus>
</div>
<div>
<input type="text" id="user_password" name="user_password" placeholder="비밀번호">
</div>
</div>
<div>
<input type="text" id="user_name" name="user_name" placeholder="이름">
</div>
<div>
<input type="text" id="user_phone_num" name="user_phone_num" placeholder="휴대전화 번호">
</div>
<div>
<input type="text" id="user_nickname" name="user_nickname" placeholder="닉네임">
</div>

<div class="label-wrapper">
<label><input type="checkbox" name="user_check" value= "check"></label>
<label><input type="checkbox" name="user_check" value="fourteen">만 14세 이상입니다.</label>
</div>


</form>


</section>



<script src="resources/script/validation_join.js"></script>

</body>
</html>