<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="theme-default-content content__default">
		<h1 id="삽입-정렬-insertion-sort">
			<a href="#삽입-정렬-insertion-sort" class="header-anchor">#</a>
			CSS란?
		</h1>
		<hr>
		<h3 id="goal">
			<a href="#goal" class="header-anchor">#</a> CSS 정의
		</h3>
		<hr>
		<ol>
			<p>CSS는 Cascading Style Sheet의 약자이다. </p>
			<p> CSS는 문서의 콘텐츠와 레이아웃, 글꼴 및 시각적 요소들로 표현되는 문서의 외관(디자인)을 분리하기 위한 목적으로 만들어졌다.</p>

		</ol>
		<h3 id="abstract">
			<a href="#abstract" class="header-anchor">#</a> CSS 속성
		</h3>
		<hr>
		<ul>
			<li>여러 속성 값은 반드시 공백으로 구분되어야 한다.</li>
			<li>축약 표현 속성은 여러 속성 값을 하나의 간소화된 선언으로 적용할 수 있다.</li>
			<li>속성이 명시되지 않으면 해당 속성의 기본 값이 적용된다.</li>
		</ul>
		<h3 id="process-ascending">
			<a href="#process-ascending" class="header-anchor">#</a> CSS 속성의 주요 위치
		</h3>
		<hr>
		<ul>
			<li>하나의 규칙으로 여러 HTML 요소와 HTML 문서를 제어할 수 있기 때문에 대부분의 경우 외부 CSS 파일에 규칙을 정의하는 것을 선호한다.</li>
			<li>HTML 주석 태그(<!-- -->)는 호환되지 않는 브라우저에서 CSS 코드를 숨기는 용도로 사용한다.</li>
		</ul>
		<ol>
			<li>HTML의 link 태그를 이용하여 외부 파일을 포함한다.</li>
			<li>@import CSS 선언을 이용하여 다음 위치에 외부 CSS 파일을 포함한다.</li>
			<li>style 태그를 이용하여 CSS 규칙을 선언할 수 있다.</li>
			<li>HTML의 style 속성을 이용하여 HTML 문서의 body 태그 내 요소들에 인라인 스타일을 지정한다.</li>
		</ol>
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a> CSS 기본 문법
		</h3>
		<hr>
		<div class="language-java extra-class">
			
			<p>CSS 규칙은 선택자(selector)와 선언부(declaration)로 나뉜다. 선언부는 다시 속성(property)과 속성값(value)로 나누게 된다.</p>
			<a href="https://webdir.tistory.com/338"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F270CCE4255509FCB34" alt=""></a>
			<ul>
				<p>선택자는 보통 스타일링하고 싶은 HTML 요소나 부여한 ID 혹은 class가 위치한다.</p>
				<p>선언부에 여러개의 속성과 속성값이 있을때는 ;(세미콜론)으로 구분한다.</p>
				<p>각각의 선언은 속성과 속성값을 :(콜론)으로 구분한다.</p>
			</ul>

		</div>
		<ol>
			<li><p>첫 번째 원소 앞(왼쪽)에는 어떤 원소도 갖고 있지 않기 때문에, 두 번째 위치(index)부터
					탐색을 시작한다. temp에 임시로 해당 위치(index) 값을 저장하고, prev에는 해당 위치(index)의 이전
					위치(index)를 저장한다.</p></li>
			<li><p>이전 위치(index)를 가리키는 prev가 음수가 되지 않고, 이전 위치(index)의 값이
					'1'번에서 선택한 값보다 크다면, 서로 값을 교환해주고 prev를 더 이전 위치(index)를 가리키도록 한다.</p></li>
			<li><p>
					'2'번에서 반복문이 끝나고 난 뒤, prev에는 현재 <strong>temp 값보다 작은 값들 중 제일
						큰 값의 위치(index)</strong> 를 가리키게 된다. 따라서, (prev+1)에 temp 값을 삽입해준다.
				</p></li>
		</ol>
		<br>
		<h3 id="gif로-이해하는-insertion-sort">
			<a href="#gif로-이해하는-insertion-sort" class="header-anchor">#</a>
			CSS 우선순위
		</h3>
		<hr>
		<p>
			CSS는 기본적으로 선언된 순서에 따라 적용되지만 각종 선택자와 삽입 위치에 따라 우선순위가 달라질 수 있다.
		</p>
			<h4>선택자 우선순위</h4>
			<p>!important > 인라인 스타일 > 아이디 선택자 > 클래스/속성/가상 선택자 > 태그 선택자 > 전체 선택자</p>
			<br>
			<p>경쟁 규칙이 같은 선택자 그룹에 속해 있다면 선택자의 종류와 수에 따라 우선순위가 결정된다. 즉 높은 우선순위의 선택자를 더 많이 사용한 규칙이 이긴다.</p>
			<br>
			<h4>삽입 위치 우선순위</h4>
			<ol>
				<li>head 요소안의 style 요소</li>
				<li>style 요소안의 @import 문</li>
				<li>link 요소로 연결된 CSS 파일</li>
				<li>link 요소로 연결한 CSS 파일 안의 @import 문</li>
				<li>최종 사용자가 연결한 CSS 파일</li>
				<li>브라우저의 기본 스타일시트</li>

				<p>예외적으로, 최종 사용자가 연결한 CSS 파일 안의 !important 규칙은 우선순위 1위다.</p> <p>최종 사용자는 !important 규칙을 작성해서 웹사이트 디자이너가 만든 CSS 파일의 규칙을 무효화할 수 있다.</p>
				<p>여러 CSS파일이 같은 우선순위 위치에서 연결되고 삽입되어 있을 때는 연결/삽입 순서에 따라 우선 순위가 결정된다. </p>
				<p>가장 마지막에 연결/삽입된 스타일시트가 앞의 스타일시트보다 우선순위가 높다.</p>
			</ol>
		<br>
		<h3 id="시간복잡도">
			<a href="#시간복잡도" class="header-anchor">#</a> 우선순위 전략
		</h3>
		<hr>
		<p>
			우선순위를 최대한 단순하게 유지해야 한다는 것을 고려한다.
		</p>
<ul>
	<li>연결하는 CSS 파일의 수를 최소화</li>
	<li>@import 문 사용을 자제</li>
	<li>선택자를 각 CSS 파일 안에서의 의도한 순서대로 정렬</li>
</ul>
		<br>
		
		<h4 id="참고-자료">
			<a href="#참고-자료" class="header-anchor">#</a> 출처
		</h4>
		<hr>
		<ul>
			<li><a
				href="https://webdir.tistory.com/338"
				target="_blank" rel="noopener noreferrer">출처 : https://webdir.tistory.com/338<span></span></a></li>
		</ul>
	</div>


	<div class="contents-comment"></div>
</body>
</html>