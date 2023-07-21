<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML이란?</title>
</head>
<body>
<style>
.theme-default-content {
	display: grid;
	margin-top: 30px;
}
</style>
	<jsp:include page="/header"></jsp:include>
	<jsp:include page="/menuBar"></jsp:include>
	<div class="theme-default-content content__default">
			<c:choose>
				<c:when test="${fn:contains(sessionScope.favorite, result.content_id)}">
					<button id="bookmark-btn" onclick="addFavorite()">
					<!-- 찬 스타 -->
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
					  		<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
						</svg>
						<span id="bookmark-text">즐겨 찾기 제거</span>
					</button>
				</c:when>
				<c:otherwise>
					<button id="bookmark-btn" onclick="addFavorite()">
					<!-- 빈 스타 -->
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
						</svg>
						<span id="bookmark-text">즐겨 찾기 추가</span>
					</button>
				</c:otherwise>
			</c:choose>
		</button>
		<h1 id="삽입-정렬-insertion-sort">
			<a href="#삽입-정렬-insertion-sort" class="header-anchor">#</a>
			HTML이란?
		</h1>
		<hr>
		<h3 id="goal">
			<a href="#goal" class="header-anchor">#</a> 정의
		</h3>
		<hr>
		<ol>
			<p>HTML 은 Hyper Text Markup Language 약어로 HyperText(웹 페이지에서 다른
				페이지로 이동할 수 있도록 하는 것) 기능을 가진 문서를 만드는 언어입니다. 다시 말해, 구조를 설계할 때 사용되는 언어로
				hyper link 시스템을 가지고 있으며, 흔히 말하는 웹 페이지를 위한 마크업 언어라고 할 수 있습니다.</p>
		</ol>
		<h3 id="abstract">
			<a href="#abstract" class="header-anchor">#</a> 웹 페이지는 무엇일까?
		</h3>
		<hr>
		<ol>
			<p>웹 페이지(web page)는 월드 와이드 웹 상에 있는 개개의 문서를 가리킵니다.</p>
			<p>.gif, jpg, .Ai, .pdf, .doc, .hwp 이와 같은 확장자 포맷이 있듯이 HTML 은
				.htm, .html 확장자 포맷을 가지고 있습니다.</p>
			<p>이 html 문서는 단순히 텍스트 파일에 불과하고 웹 브라우저가 해석을 해서 구조를 통해 화면에 렌더링 해주게
				되고 사용자는 View 라고 하는 스크린을 통해 접하게 되는 것입니다.</p>
			<p>월드 와이드 웹(World Wide Web, WWW, W3)은 인터넷에 연결된 컴퓨터들을 통해 사람들이 정보를
				공유할 수 있는 전 세계적인 정보 공간을 말합니다.</p>
			<p>W3C(World Wide Web Consortium)는 월드 와이드 웹을 위한 표준을 개발하고 장려하는
				조직으로 W3C는 회원기구, 정직원, 공공기관이 협력하여 웹 표준을 개발하는 국제 컨소시엄입니다.</p>
			<br>
			<p>간단히 웹(Web)이라 부르는 경우가 많습니다.</p>
			<p>이 문서도 역시 엄연한 웹 페이지이며, 따라서 현재 이 문서를 읽고 있다면 '웹 페이지를 보고 있다'고도 할 수
				있습니다.</p>
			<p>그리고 이 web 이란 용어는 인터넷과 동의어로 쓰이는 경우가 많으나 엄격히 말해 서로 다른 개념입니다.</p>
			<p>인터넷이란 이름은 '네트워크의 네트워크'를 구현하여 모든 컴퓨터를 하나의 통신망 안에 연결(Inter
				Network)하고자 하는 의도에서</p>
			<p>이를 줄여 인터넷(Internet)이라고 처음 명명하였던데 어원을 두고 있습니다.</p>
			<p>이러한 개념들을 상세히 숙지하고 있을 필요는 없지만 이 분야를 공부하고자 한다면 배경 지식정도는 알아두면 좋을
				것 같습니다.</p>
			<p>또한 앞으로 이 마크업 언어를 숙지하는데 있어 항상 시멘틱 마크업을 목표로 나아가야 할 것입니다.</p>
			<p>시멘틱 마크업(Semantic Markup) 은 웹 사이트(페이지)의 콘텐츠를 설명하는데 사용되는 마크업
				언어이고,</p>
			<p>HTML 은 콘텐츠의 의미를 설명하는데 유일한 목적을 가집니다.</p>
			<br>
			<p>앞으로 공부할 CSS 가 비주얼 디자인(Visual Design) 이라면 HTML 은 구조적
				설계(Structure Design) 이라 할 수 있습니다.</p>
		</ol>
		<h3 id="process-ascending">
			<a href="#process-ascending" class="header-anchor">#</a> 시멘틱
			마크업(Semantic Markup)
		</h3>
		<hr>
		<ol>
			<p>Semantic Markup은 종종 POSH(Plain Old Semantic HTML)라고도 불리우는데 말
				그대로 평범하고 오래된 의미론적인 HTML이라는 뜻입니다.</p>
			<p>HTML 은 웹사이트 콘텐츠를 설명하는데 사용되는 마크업 언어이므로 콘텐츠의 의미를 설명하는데 유일한 목적을
				가지고 있습니다.</p>
			<p>앞으로 공부할 CSS 가 비주얼 디자인(Visual Design) 이라면 HTML 은 구조적
				설계(Structure Design) 이라 할 수 있습니다.</p>
		</ol>
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a> HTML 용어
		</h3>
		<hr>
		<div class="language-java extra-class">
			<ul>
				<p>엘리먼트(element) - 요소 콘텐츠(요소포함)를 감싸는 태그(tag)</p>
				<p>open tag - 여는 태그</p>
				<p>close tag - 닫는 태그</p>
				<a href="https://webclub.tistory.com/608"><img
					src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F99C713425C1B1CC714"
					alt=""></a>
			</ul>
			<ol>
				<p>여는 태그와 닫는 태그가 있는 이유는 콘텐츠를 감싸기 위함입니다.(또는 요소가 다른 요소를 감싸기 위해서)</p>
				<p>닫는 태그(close tag)가 없는 HTML 요소 - 콘텐츠(contents)를 감싸지 않아 비어있다는 의미</p>
				<p>헤더는 브라우저가 인식할 수 있는 정보를 제공해 주는 영역으로 메타 태그의 문자셋은 utf-8 로 되어있음을
					나타내는 정보만 제공하고 있기 때문에 내용(콘텐츠)을 감싸지 않았다라고 볼 수 있습니다.</p>
				<p>애트리뷰트(attribute) - 속성</p>
				<p>벨류(value) - 값</p>
				<a href="https://webclub.tistory.com/608"><img
					src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F99A1A1495C1B1D2F18"
					alt=""></a>
			</ol>
			<hr>
		</div>
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a> HTML 문서
			작성을 위한 DTD
		</h3>
		<hr>
		<ol>
			<p>HTML 을 작성하려면 문서타입이라는 것이 반드시 필요합니다.</p>
			<p>문서 타입을 DTD 라고 하며, DTD(DOCTYPE or Document type Definition)는
				DTD는 HTML 문서의 반드시 최상 위에 위치해야 합니다.</p>
			<p>이러한 문서형 정의로 HTML5, HTML4, XHTML 세가지 문서 유형이 존재하며 기술한 유형에 따라 마크업
				문서의 요소와 속성(attribute) 등을 처리하는 기준이 되고 이것은 또한 유효성 검사에 이용된다.</p>
		</ol>
		<br>
		<h3 id="gif로-이해하는-insertion-sort">
			<a href="#gif로-이해하는-insertion-sort" class="header-anchor">#</a>
			기본 HTML5 문서타입
		</h3>
		<hr>
		<ol>
			<img src="../resources/img/html_type.png" alt=""
				style="width: 520px;">
			<p>위와 같이 최상단에 문서 타입 지정을 지정하고, 여기서 PUBLIC 은 DTD가 공공(모든 사용자)에게 공개되어
				있으며 문서타입에 따른 W3C 표준안의 URI 을 작성하게 됩니다.</p>
			<p>그리고 URI 를 생략할 경우에도 페이지는 쿼크 모드로 렌더링됩니다.</p>
			<p>HTML이 어떤 버전으로 작성되었는지 미리 선언하여, 웹 브라우저가 내용을 올바르게 표시할 수 있도록 해주는
				것이 독타입입니다.</p>
			<p>그리고 바로 다음에 html 태그가 오고 html 태그 안에는 head 와 body 로 크게 나뉘어져 있습니다</p>
			<p>태그는 일반적으로 시작태그와 종료(끝)태그로 이루어져 있으며 예외적인 태그들도 있습니다.</p>
			<p>또한 html 태그의 속성으로 문서에서 다룰 언어를 지정해야합니다.</p>
			<p>언어 설정은 필수 속성으로 이 속성이 생략되어 있으면 안됩니다.</p>
			<p>head 안에는 콘텐츠를 표현하는 내용은 없지만 콘텐츠를 표현하기 위한 내용들을 포함하게 됩니다.</p>
			<p>위의 meta(메타 태그)는(문서자체를 설명하는정보)는 문서의 정보(웹페이지의 요약)를 브라우저와 검색엔진에게
				이 문서가 어떤 정보를 가지고 있는지 알려주는 것을 명시합니다.</p>
			<p>즉, 문서 자체를 설명하는 정보를 담고 있는 것으로 그 문서의 핵심키워드, 누가 만들었는지, 문자셋(언어설정)
				등은 어떤 것을 사용하고 있는지 등의 정보를 담고 있는 태그입니다.</p>
			<p>위 코드의 메타 정보는 실제 문서가 다루고 있는 언어들의 셋(문자셋)을 정의하고 있습니다.</p>
			<p>title 은 문서의 정보를 브라우저에 표시하는 역할을 합니다.</p>
			<p>link 는 외부자원(external file)이라고 합니다.</p>
			<p>마지막으로 문서의 본문영역 즉, 콘텐츠 영역을 의미하는 body 태그에 웹 페이지에 표현되는 콘텐츠를 작성하게
				됩니다.</p>
		</ol>
		<hr>

		<h4 id="참고-자료">
			<a href="#참고-자료" class="header-anchor">#</a> [참고 자료]
		</h4>
		<ul>
			<li><a href="https://webclub.tistory.com/608" target="_blank"
				rel="noopener noreferrer">출처 : https://webclub.tistory.com/608<span>
		</ul>
	</div>
	<div class="contents-comment"></div>
	<jsp:include page="/footer"></jsp:include>
	<script src="../resources/script/favoriteContent.js"></script>
</body>
</html>