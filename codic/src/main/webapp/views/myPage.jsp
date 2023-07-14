<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
					<!-- TODO 마이페이지 만들기  -->
 					<li><a href="/Logout">로그아웃</a></li>
					<li><a href="/update">회원정보 수정</a></li>
					<li><a href="/leave">회원탈퇴</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
		</div>
		</div>
		
		<div class="content-box">
		<h2>즐겨찾기</h2>
		<div class="favorite">
		 
		</div>
	</div>
	</div>
	
</section>
</body>
</html>