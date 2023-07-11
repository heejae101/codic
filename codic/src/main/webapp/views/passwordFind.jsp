<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
<h2>비밀번호 찾기</h2>
<span>비밀 번호 재설정을 위해 이메일을 입력해주세요</span>
<form method="POST" >
<div class="email">
<label for="email">이메일</label>
<input type="text" id="user_email" name="user_email"
						maxlength="320" placeholder="your@email.com" autofocus>
						
						<label for="email_num">인증번호 입력</label>
				<input type="text" name="code" id="code" maxlength="10" disabled="disabled" >
				<input type="button"id="code_ch" onclick="authCodeCheck()" disabled="disabled" value="인증">
				</div>
				
<input type="button" id="f-btn" value="다음">						
</form>

</body>
</html>