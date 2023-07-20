<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘 영역 -->
<link rel="icon" href="image/favicon.ico">

<!-- 스타일 -->
<link rel="stylesheet" href="../resources/style/main.css">

<!-- 슬라이더 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<title>알뜰신코📖</title>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<section>
		<div class="img-area">
			<img src="../resources/img/main.jpg">
		</div>

		<div class="text-area">
			<span>알뜰신코📖</span>
			<p>알아두면 쓸데있고 신기한 코딩사전📝</p>
		</div>

		<div class="search-area">
			<div id="search-icon">
				<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35"
					fill="black" class="bi bi-search" viewBox="0 0 16 16">
						<path
						d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
				</svg>
			</div>
			<div id="search-bar-Section">
				<form id="searchFormSection" action="/ShowContent">
					<input type="text-bar" id="text-bar" name="text"
						placeholder="무엇이든 물어보세요!">
				</form>
			</div>
		</div>

		<div class="category-area">
			<ul>
				<li><a href="/ShowContent?category=html">
						<div class="li-icon-area">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
		  						<path
									d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
		  						<path
									d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
							</svg>
						</div> <span>HTML</span>
				</a></li>
				<li><a href="/ShowContent?category=css">
						<div class="li-icon-area">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
		  						<path
									d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
		  						<path
									d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
							</svg>
						</div> <span>CSS</span>
				</a></li>
				<li><a href="/ShowContent?category=javascript">
						<div class="li-icon-area">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
		  						<path
									d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
		  						<path
									d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
							</svg>
						</div> <span>JAVASCRIPT</span>
				</a></li>
				<li><a href="/ShowContent?category=java">
						<div class="li-icon-area">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
		  						<path
									d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
		  						<path
									d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
							</svg>
						</div> <span>JAVA</span>
				</a></li>
				<li><a href="/ShowContent?category=database">
						<div class="li-icon-area">
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
		  						<path
									d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
		  						<path
									d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
							</svg>
						</div>
						<span>DATABASE</span>
				</a></li>
			</ul>
		</div>

		<div class="content-area">
			<c:if test="${sessionScope.nickname}">
				<div id="favorites-content">
					<h3>즐겨 찾기 ✨</h3>
					<ul id="favorites-content">
					</ul>
				</div>
			</c:if>
			<div id="populer-content">
				<h2>인기 게시글 ✨</h2>
				<div class="slider5">
					<div class="slide">
						<a href="https://www.youtube.com/watch?v=5Cof240DvuA"> <img
							src="./image/guide_img_list/guide_img_list_1.jpg">
						</a> <span>노년의 여행, 어떻게 시작해야할까?</span>
					</div>
					<div class="slide">
						<a href="https://www.youtube.com/watch?v=EhxfrVG8hy0"><img
							src="./image/guide_img_list/guide_img_list_2.jpg"
							decoding="async"></a> <span>우리나라 맞아?! 이국적인 국내 여행지 7</span>
					</div>
					<div class="slide">
						<a href="https://www.youtube.com/watch?v=2301iEVzZ6o"><img
							src="./image/guide_img_list/guide_img_list_3.jpg"
							decoding="async"></a> <span>부모님과 함께 하는 여행, 여기로 가세요~</span>
					</div>
					<div class="slide">
						<a href="https://www.youtube.com/watch?v=QAioYjzghJE"><img
							src="./image/guide_img_list/guide_img_list_4.jpg"
							decoding="async"></a> <span>비행기 탑승, 어렵지 않아요!</span>
					</div>
					<div class="slide">
						<a href="https://www.youtube.com/watch?v=53_skoilpQQ"><img
							src="./image/guide_img_list/guide_img_list_5.jpg"
							decoding="async"></a> <span>박물관, 조승연 작가님이 알려드립니다!</span>
					</div>
					<div class="slide">
						<a href="https://www.youtube.com/watch?v=6b22TCB33tA"><img
							src="./image/guide_img_list/guide_img_list_6.jpg"
							decoding="async"></a> <span>일본여행, 이 영상 하나만 보고 가세요!</span>
					</div>
				</div>
				<div class="left_arrow_area">
					<img src="image/arrow-left.png" class="left_arrow_img">
				</div>
				<div class="right_arrow_area">
					<img src="image/arrow-right.png" class="right_arrow_img">
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/footer"></jsp:include>
	<script src="../resources/script/main.js"></script>
</body>
</html>