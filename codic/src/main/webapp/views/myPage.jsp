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
				<div class="delete_box">
					<a href="/leave">회원탈퇴</a>
				</div>
			</div>


			<div class="container">

				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">내프로필</li>
					<li class="tab-link" data-tab="tab-2">즐겨찾기</li>
					<li class="tab-link" data-tab="tab-3">회원정보수정</li>

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
				<div id="tab-3" class="tab-content">
					<div class="form_wrap">
						<form id=update method="POST" action="/UpdateUser">

							<label for="email" class="title">이메일</label>
							<div class="email_box">
								<input type="text" class="square" id=user_email
									name="user_email" value="${sessionScope.email}" readonly>
							</div>
							<div class="pwd1">
								<label for="pwd1" class="title">비밀번호</label>
								<div class="pwd1_box">
									<input type="password" class="square" id="user_password"
										name="user_password">
								</div>
							</div>
							<div class="pwd2">
								<label for="pwd2" class="title">새 비밀번호</label>
								<div class="pwd2_box">
									<input type="password" class="square" id="new_password"
										name="new_password" placeholder="4-10자의 영문, 특수문자, 숫자 조합">
									<p class="err">*특수문자는 '! @ # $ % ^ & +='만 사용 가능합니다.</p>
									<ul>
										<li class="error" id="error-password">비밀번호는 필수정보입니다.</li>
									</ul>
									<span class="err" id="chkNotice1" size="1"></span>
								</div>
							</div>

							<div class="pwd3">
								<label for="pwd3" class="title">새 비밀번호 확인</label>
								<div class="pwd3_box">
									<input type="password" name="user_password_ch" class="square"
										id="user_password_ch" placeholder="비밀번호 확인">
									<ul>
										<li class="error" id="error-password_ch">새 비밀번호를 확인해주세요.</li>
									</ul>
									<span class="err" id="chkNotice2" size="1"></span>
								</div>
							</div>

							<div>
								<label for="name" class="title">이름</label>
								<div class="name_box">
									<input type="text" class="square" id="user_name"
										name="user_name" value="${sessionScope.name}" readonly>
								</div>
							</div>

							<div>
								<label for="nicekname" class="title">닉네임</label>
								<div class="nickname_box">
									<input type="text" class="square" id="user_nickname"
										name="user_nickname" value="${requestScope.nickname}">
									<input type="button" id="user_nickname_dupl"
										name="user_nickname_dupl" value="중복 체크" onclick="duplCheck()"></input>
									<ul>
										<li class="error" id="error-nickname">닉네임은 필수정보입니다.</li>
									</ul>
									<span class="err" id="chkMsg" size="1"></span>
								</div>
							</div>

							<input type="button" id="update-btn" value="회원정보 수정"
								onclick="checkValue(form)">

						</form>
					</div>
				</div>

			</div>

		</div>


	</section>
	<jsp:include page="/footer"></jsp:include>
	<script src="../resources/script/mypage.js"></script>

</body>
</html>