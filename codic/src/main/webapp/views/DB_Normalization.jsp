<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규화</title>
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
		<h1 id="정규화-normalization">
			<a href="#정규화-normalization" class="header-anchor">#</a>
			정규화(Normalization)
		</h1>
		<br>
		<div class="language- extra-class">
			<pre class="language-text">
				<code>데이터의 중복을 줄이고, 무결성을 향상시킬 수 있는 정규화에 대해 알아보자
</code>
			</pre>
		</div>
		<br>
		<h3 id="normalization">
			<a href="#normalization" class="header-anchor">#</a> Normalization
		</h3>
		<p>
			가장 큰 목표는 테이블 간 <strong>중복된 데이터를 허용하지 않는 것</strong>이다.
		</p>
		<p>중복된 데이터를 만들지 않으면, 무결성을 유지할 수 있고, DB 저장 용량 또한 효율적으로 관리할 수 있다.</p>
		<br>
		<h3 id="목적">
			<a href="#목적" class="header-anchor">#</a> 목적
		</h3>
		<ul>
			<li>데이터의 중복을 없애면서 불필요한 데이터를 최소화시킨다.</li>
			<li>무결성을 지키고, 이상 현상을 방지한다.</li>
			<li>테이블 구성을 논리적이고 직관적으로 할 수 있다.</li>
			<li>데이터베이스 구조를 확장에 용이해진다.</li>
		</ul>
		<br>
		<p>정규화에는 여러가지 단계가 있지만, 대체적으로 1~3단계 정규화까지의 과정을 거친다.</p>
		<br>
		<h3 id="제-1정규화-1nf">
			<a href="#제-1정규화-1nf" class="header-anchor">#</a> 제 1정규화(1NF)
		</h3>
		<p>테이블 컬럼이 원자값(하나의 값)을 갖도록 테이블을 분리시키는 것을 말한다.</p>
		<p>만족해야 할 조건은 아래와 같다.</p>
		<ul>
			<li>어떤 릴레이션에 속한 모든 도메인이 원자값만으로 되어 있어야한다.</li>
			<li>모든 속성에 반복되는 그룹이 나타나지 않는다.</li>
			<li>기본키를 사용하여 관련 데이터의 각 집합을 고유하게 식별할 수 있어야 한다.</li>
		</ul>
		<br> <img
			src="http://dl.dropbox.com/s/9s8vowdzs3t66uw/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202018-12-02%2017.50.02.png">
		<br>
		<p>현재 테이블은 전화번호를 여러개 가지고 있어 원자값이 아니다. 따라서 1NF에 맞추기 위해서는 아래와 같이 분리할
			수 있다.</p>
		<br> <img
			src="http://dl.dropbox.com/s/1rr8ofxuy46i61b/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202018-12-02%2018.00.52.png">
		<br> <br>
		<h3 id="제-2정규화-2nf">
			<a href="#제-2정규화-2nf" class="header-anchor">#</a> 제 2정규화(2NF)
		</h3>
		<p>테이블의 모든 컬럼이 완전 함수적 종속을 만족해야 한다.</p>
		<p>조금 쉽게 말하면, 테이블에서 기본키가 복합키(키1, 키2)로 묶여있을 때, 두 키 중 하나의 키만으로 다른
			컬럼을 결정지을 수 있으면 안된다.</p>
		<blockquote>
			<p>기본키의 부분집합 키가 결정자가 되어선 안된다는 것</p>
		</blockquote>
		<br> <img
			src="http://dl.dropbox.com/s/c2xfxdanbuiaw1l/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202018-12-03%2006.58.17.png">
		<br>
		<p>
			<code>Manufacture</code>
			과
			<code>Model</code>
			이 키가 되어
			<code>Model Full Name</code>
			을 알 수 있다.
		</p>
		<p>
			<code>Manufacturer Country</code>
			는
			<code>Manufacturer</code>
			로 인해 결정된다. (부분 함수 종속)
		</p>
		<p>
			따라서,
			<code>Model</code>
			과
			<code>Manufacturer Country</code>
			는 아무런 연관관계가 없는 상황이다.
		</p>
		<br>
		<p>결국 완전 함수적 종속을 충족시키지 못하고 있는 테이블이다. 부분 함수 종속을 해결하기 위해 테이블을 아래와 같이
			나눠서 2NF를 만족할 수 있다.</p>
		<br> <img
			src="http://dl.dropbox.com/s/x8481598dhnpzeg/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202018-12-03%2010.58.15.png">
		<br> <br>
		<h3 id="제-3정규화-3nf">
			<a href="#제-3정규화-3nf" class="header-anchor">#</a> 제 3정규화(3NF)
		</h3>
		<p>2NF가 진행된 테이블에서 이행적 종속을 없애기 위해 테이블을 분리하는 것이다.</p>
		<blockquote>
			<p>이행적 종속 : A → B, B → C면 A → C가 성립된다</p>
		</blockquote>
		<p>아래 두가지 조건을 만족시켜야 한다.</p>
		<ul>
			<li>릴레이션이 2NF에 만족한다.</li>
			<li>기본키가 아닌 속성들은 기본키에 의존한다.</li>
		</ul>
		<br> <img
			src="http://dl.dropbox.com/s/xtfoetv8hg6jn3f/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202018-12-03%2012.59.46.png">
		<br>
		<p>
			현재 테이블에서는
			<code>Tournament</code>
			와
			<code>Year</code>
			이 기본키다.
		</p>
		<p>
			<code>Winner</code>
			는 이 두 복합키를 통해 결정된다.
		</p>
		<p>
			하지만
			<code>Winner Date of Birth</code>
			는 기본키가 아닌
			<code>Winner</code>
			에 의해 결정되고 있다.
		</p>
		<p>따라서 이는 3NF를 위반하고 있으므로 아래와 같이 분리해야 한다.</p>
		<br> <img
			src="http://dl.dropbox.com/s/ks03nkc26nsffin/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202018-12-04%2014.51.39.png">
		<br> <br>
		<h4 id="참고-사항">
			<a href="#참고-사항" class="header-anchor">#</a> [참고 사항]
		</h4>
		<ul>
			<li><a
				href="https://wkdtjsgur100.github.io/database-normalization/"
				target="_blank" rel="noopener noreferrer">링크<span><svg
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							focusable="false" x="0px" y="0px" viewBox="0 0 100 100"
							width="15" height="15" class="icon outbound">
							<path fill="currentColor"
								d="M18.8,85.1h56l0,0c2.2,0,4-1.8,4-4v-32h-8v28h-48v-48h28v-8h-32l0,0c-2.2,0-4,1.8-4,4v56C14.8,83.3,16.6,85.1,18.8,85.1z"></path> <polygon
								fill="currentColor"
								points="45.7,48.7 51.3,54.3 77.2,28.5 77.2,37.2 85.2,37.2 85.2,14.9 62.8,14.9 62.8,22.9 71.5,22.9"></polygon></svg>
						<span class="sr-only">(opens new window)</span></span></a></li>
		</ul>
	</div>
	<div class="contents-comment"></div>
	<jsp:include page="/footer"></jsp:include>

</body>
</html>