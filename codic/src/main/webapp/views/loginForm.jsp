<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>

<title>로그인</title>
</head>
<body>

<section id="login-section">
<h2>로그인</h2>
<form method="POST" action="../Login">
<div class="login_2">
<div>
	<input type="text" id="user_email" name="user_email" placeholder="your@email.com" autofocus>
</div>
<div>
	<input type="password" id="user_password" name="user_password" placeholder="비밀번호">
</div>

</div>


<ul>
<li class="error" id="error-id">유효한 이메일을 입력해주세요.</li>
<li class="error" id="error-password">비밀번호는 필수 정보입니다.<li> 
</ul>

<input type="submit" id="submit" value="로그인" onclick="checkValue(form)">

</form>

 <div class="find">
         <h2>비밀번호를 잊어버리셨나요?</h2>
         <button class="btn_find"><a href="/views/passwordFind.jsp">비밀번호 찾기</a></button>
 </div>
 
 
    <!-- 간편 로그인 -->
    <div class="login_2">
   <div class="naver"><a href="#">
      네이버 로그인</a></div>
       <div class="kakao"> <a href="javascript:kakaoLogin()">카카오 로그인</a></div>
       </div>
              
</section>


<script src="../resources/script/validation_login.js"></script>

</body>
</html>