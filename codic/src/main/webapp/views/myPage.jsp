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
			<div class="choose-box">
				<h1>${sessionScope.nickname}님</h1>
				<div class="side">
					<ul>
						<c:choose>
							<c:otherwise>

								<div>
									<button id="btn">
										<a href="/Logout">로그아웃</a>
									</button>
								</div>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<hr class="line">
				<div class="user_box">
				<a href="/update">회원정보수정</a>
				<div class="delete_box">
					<a href="/leave">회원탈퇴</a>
				</div>
				</div>
			</div>


			<div class="container">

				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">내프로필</li>
					<li class="tab-link" data-tab="tab-2">즐겨찾기</li>

				</ul>

				<div id="tab-1" class="tab-content current">
					<div class="myInfo">
						<div class="myProfile">
							<p class="name"><strong>이름:</strong>${sessionScope.name}</p> <p
								class="email"><strong>이메일:</strong>${sessionScope.email}</p>
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