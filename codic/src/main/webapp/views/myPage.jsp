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
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">

</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<c:if test="${ empty sessionScope.nickname }">
		<c:redirect url="login"></c:redirect>
	</c:if>
	<section id="myPage">
		<div class="myPage-box">
			<div class="nickname-box">
				<div class="circle">
					<img class="p-img" src="${sessionScope.profile}" alt="">
					</div>
	

				<div class="myNickname">
					<strong class="nickname">${sessionScope.nickname}<span class="nim">님</span></strong>
					<button id="logout-btn">
						<a href="/Logout">로그아웃</a>
					</button>
				</div>
				<div class="codic-text">
					<p class="comment">알쓸신코! CODIC!에서 함께 공부해 봐요!</p>
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

							<li class="line"><strong>이름</strong><p class="text"> ${sessionScope.name}</p></li>
							<li class="line" id="email-text"><strong>이메일</strong>
								<p class="text">${sessionScope.email}</p></li>
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