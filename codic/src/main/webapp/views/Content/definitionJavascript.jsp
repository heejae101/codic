<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<title>JavaScript란?</title>
</head>
<body>
<style>
.theme-default-content{
	display:grid;
	margin-top:30px;
}
</style>
<jsp:include page="/header"></jsp:include>
<jsp:include page="/menuBar"></jsp:include>
	<div class="theme-default-content content__default">
		<h1 id="삽입-정렬-insertion-sort">
			<a href="#삽입-정렬-insertion-sort" class="header-anchor">#</a>
			JAVASCRIPT란?
		</h1>
		<hr>
		<h3 id="goal">
			<a href="#goal" class="header-anchor">#</a> 정의
		</h3>
		<hr>
		<p>자바스크립트를 한마디로 요약하자면 웹을 풍부하게 만들어주는 작고 가벼운 언어입니다. </p>
		<p>미국의 넷스케이프 커뮤니케이션즈사(Netscape Communications)가 개발한 스크립트 언어이며</p>
		<p>웹 브라우저에서 실행하는 스크립트 언어를 기술합니다. 작고도 빠르기 때문에 웹문서를 동적으로 꾸밀 때 가장 널리 쓰입니다.</p>
		<p>언어 규격은 자바의 부분 집합(subset)으로 되어 있습니다. </p>
		<p>하이퍼텍스트 생성 언어(HTML) 문서를 작성하는 수준의 사용자가 사용하는 것을 주안점으로 하여 자바의 언어 규격으로부터 변수의 형(정수형이나 문자열형 등)을 생략하거나 새로운 클래스 정의를 할 수 없도록 하였습니다.</p>
		<p>스크립트는 HTML 문서 속에 직접 기술하며, ‘script’라는 꼬리표를 사용합니다.</p>
		<p>프로그래밍 입문자들은 자바스크립트와 자바가 서로 비슷한 기술이라고 생각하곤 합니다.</p>
		<p>두 언어 모두 자바라는 언어를 기반으로 하고 있기 때문이죠.</p>
		<p>하지만 자바스크립트는 자바와는 다른점이 상당히 많습니다. 기능과 사용법까지 완전히 다릅니다.</p>
		<br>
		<a href="https://coding-factory.tistory.com/193"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F998DA0495B345E270A" alt=""></a>
		<hr>
		<h3 id="abstract">
			<a href="#abstract" class="header-anchor">#</a> 자바스크립트의 특징 
		</h3>
		<hr>
		<ol>
			<li>JavaScript는 객체 기반의 언어입니다. 하지만 상속과 클래스라는 개념은 없습니다.</li>
			<li>JavaScript는 인터프리터 언어로서 클라이언트의 웹 브라우저에 의해 해석되고 실행됩니다.</li>
			<li>JavaScript는 HTML문서 내에 기술되고 HTML 문서와 함께 수행됩니다.</li>
			<li>JavaScript는 HTML에 연산 제어 등 프로그래밍적인 요소를 추가하고 클라이언트의 자원을 활용할 수 있게 합니다.</li>
		</ol>

		<hr>
		<h3 id="process-ascending">
			<a href="#process-ascending" class="header-anchor">#</a>자바스크립트의 역할 
		</h3>
		<hr>
		<p>자바스크립트의 일반적인 용도는 웹 페이지에 기능을 더해 HTML 웹 페이지를 동적이고 살아 있게 만드는 것입니다.</p>
		<p>한마디로 HTML은 겉으로 보이는 프론트핸드, 자바스크립트는 겉으로 보이지않는 백핸드라고 할 수 있겠군요.</p>
		<br>
		<p>자바스크립트는 다음과 같은 일을 할 수 있습니다.</p>
		<ol>
			<li>HTML 페이지 변경 및 HTML 엘리먼트와 콘텐츠의 추가나 제거</li>
			<li>CSS 및 HTML 엘리먼트의 스타일 변경</li>
			<li>사용자와의 상호작용, 폼의 유효성 검증</li>
			<li>마우스와 키보드 이벤트에 대한 스크립트 실행</li>
			<li>웹 브라우저 제어, 쿠키 등의 설정과 조회</li>
			<li>AJAX 기술을 이용한 웹 서버와의 통신</li>
			<li>동적인 효과 이미지 롤오버 상태표시줄에 문자열표시 등등</li>
			<li>웹사이트의 기능적인 면 쿠키처리, 새로운 Window열기 등등</li>
		</ol>
			<p>요즘 시대에 자바스크립트가 많이 발전되어 어떤 웹사이트에보면 JSP나 PHP같은 언어없이 HTML과 JavaScript로 만으로 이루어진 웹사이트가 등장 할 정도입니다. </p>

			<hr>
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a>자바스크립트의 장단점 
		</h3>
		<hr>
		<div class="language-java extra-class">
			<h4>자바스크립트의 장점</h4>
			<p>자바스크립트는 컴파일 과정이 없기 때문에 다른 언어와 비교했을 때 빠른 시간 안에 스크립트 코드를 작성할 수 있게 도와줍니다.</p>
			<p>기존 C나 자바 언어와 달리 굉장히 단순한 구조와 원칙을 가지고 있기 때문에 초보 개발자들이 쉽게 배우고 이해할 수 있습니다.</p>
			<p>예를 들어 자바스크립트 코드 안에서는 변수, 클래스 및 메소드를 선언하지 않아도 되고, 메소드가 ‘public’, ‘private’ 또는 ‘protected’인지 구분하지 않아도 됩니다.</p>
			<p>자바스크립트는 웹에 특화된 기술이기 때문에 운영체제나 플랫폼에 상관없이 잘 작동되고 확장성도 높습니다.</p>
			<br>
			<h4>자바스크립트의 단점</h4>
			<p>단점은 성능이나 보안 측면입니다.</p>
			<p>일단 내부에서 제공되는 기능이 제한적이고, 관련된 개발도구도 적은 편이고요.</p>
			<p>또한 자바스크립트는 HTML 소스코드에 함께 작성되면서 소스코드가 외부로 공개되는데, 이 과정에서 보안 취약점이 발생할 수 있습니다.</p>
		</div>
		<hr>
		<br>
		<h4 id="참고-자료">
			<a href="#참고-자료" class="header-anchor">#</a> 출처 : 
		</h4>
		<ul>
			<li><a
				href=""
				target="_blank" rel="noopener noreferrer">링크<span> </span></a></li>
		</ul>
	</div>
	<div class="contents-comment"></div>
	<jsp:include page="/footer"></jsp:include>
</body>
</html>