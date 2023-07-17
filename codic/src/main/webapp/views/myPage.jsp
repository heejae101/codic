<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/mypage.css">

</head>
<body>
	<jsp:include page="/header"></jsp:include>

	<section id="myPage">
		<div class="myPage-box">
			<div class="nickname-box">
			<div class="circle">
			<img class="p-img" src="../resources/img/myprofileIMG.png" alt="">
				</div>
				<div class="myNickname">
					<strong class="nickname">${sessionScope.nickname}님</strong>
					
					<button id="logout-btn" >
								<a href="/Logout">로그아웃</a>
							</button>
					</div>
					<div class="codic-text">
					<p>알쓸신코! CODIC!에서 함께 공부해 봐요!</p>
					</div>
			</div>

			<div class="container">

				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">내프로필</li>
					<li class="tab-link" data-tab="tab-2">즐겨찾기</li>

				</ul>

				<div id="tab-1" class="tab-content current">
					<div class="myInfo">
						<ul class="myProfile">
						
							<li class="line">
								<strong >이름</strong> ${sessionScope.name}</li>
							<li class="line" id="email-text">
								<strong>이메일</strong> ${sessionScope.email}</li>
						</ul>


						<div class="user_box">
							
							<button class="btn">
								<a href="/update" class="mypage_title">회원정보수정</a>
							</button>
							<button class="btn">
								<a href="/leave" class="mypage_title">회원탈퇴</a>
							</button>

						</div>


					</div>
				</div>
				<div id="tab-2" class="tab-content">
					<div class="favorite"></div>
				</div>

			</div>

		</div>


	</section>
	<jsp:include page="/footer"></jsp:include>
	<script src="../resources/script/mypage.js"></script>

</body>
</html>