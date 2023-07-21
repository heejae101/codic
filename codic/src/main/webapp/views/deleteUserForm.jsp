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
<link rel="stylesheet" href="../resources/style/delete.css">
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<title>회원 탈퇴</title>
</head>
<body>
	<div id="root">
		<jsp:include page="/header"></jsp:include>
		<c:if test="${ empty sessionScope.nickname }">
			<c:redirect url="login"></c:redirect>
		</c:if>
		<section id="delete-section">
			<div class="delete">
				<h2 class="delete_text">${sessionScope.nickname}님 정말떠나시나요?</h2>
				<form id="delete">
					<div>
						<input type="text" class="square" id="user_email"
							name="user_email" value="${sessionScope.email}" readonly>
					</div>
					<div>
						<input type="password" class="square" id="user_password"
							name="user_password" placeholder="비밀번호">
					</div>
					<ul>
						<li class="error" id="error-password">비밀번호를 입력해주세요.
						<li>
					</ul>
					<input type="button" id="delete-btn" value="회원 탈퇴"
						onclick="checkValue(form)">
				</form>
				
				<div class="back_box">
				<a  href="myPage"><span class="back">마이페이지로 이동</span></a>
			</div>
			</div>
		</section>
		<jsp:include page="/footer"></jsp:include>
	</div>

	<script src="../resources/script/validation_delete.js"></script>

</body>
</html>