<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 트랜잭션이란?</title>
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
		<h1 id="db-트랜잭션-transaction">
			<a href="#db-트랜잭션-transaction" class="header-anchor">#</a> DB
			트랜잭션(Transaction)
		</h1>
		<br>
		<h4 id="트렌잭션이란">
			<a href="#트렌잭션이란" class="header-anchor">#</a> 트렌잭션이란?
		</h4>
		<blockquote>
			<p>데이터베이스의 상태를 변화시키기 위해 수행하는 작업 단위</p>
		</blockquote>
		<br>
		<p>
			상태를 변화시킨다는 것 → <strong>SQL 질의어를 통해 DB에 접근하는 것</strong>
		</p>
		<div class="language- extra-class">
			<pre class="language-text">
				<code>- SELECT
- INSERT
- DELETE
- UPDATE
</code>
			</pre>
		</div>
		<br>
		<p>
			작업 단위 → <strong>많은 SQL 명령문들을 사람이 정하는 기준에 따라 정하는 것</strong>
		</p>
		<div class="language- extra-class">
			<pre class="language-text">
				<code>예시) 사용자 A가 사용자 B에게 만원을 송금한다.

* 이때 DB 작업
- 1. 사용자 A의 계좌에서 만원을 차감한다 : UPDATE 문을 사용해 사용자 A의 잔고를 변경
- 2. 사용자 B의 계좌에 만원을 추가한다 : UPDATE 문을 사용해 사용자 B의 잔고를 변경

현재 작업 단위 : 출금 UPDATE문 + 입금 UPDATE문
→ 이를 통틀어 하나의 트랜잭션이라고 한다.
- 위 두 쿼리문 모두 성공적으로 완료되어야만 "하나의 작업(트랜잭션)"이 완료되는 것이다. `Commit`
- 작업 단위에 속하는 쿼리 중 하나라도 실패하면 모든 쿼리문을 취소하고 이전 상태로 돌려놓아야한다. `Rollback`

</code>
			</pre>
		</div>
		<br>
		<p>
			<strong>즉, 하나의 트랜잭션 설계를 잘 만드는 것이 데이터를 다룰 때 많은 이점을 가져다준다.</strong>
		</p>
		<br>
		<h4 id="트랜잭션-특징">
			<a href="#트랜잭션-특징" class="header-anchor">#</a> 트랜잭션 특징
		</h4>
		<hr>
		<ul>
			<li><p>원자성(Atomicity)</p>
				<blockquote>
					<p>트랜잭션이 DB에 모두 반영되거나, 혹은 전혀 반영되지 않아야 된다.</p>
				</blockquote></li>
			<li><p>일관성(Consistency)</p>
				<blockquote>
					<p>트랜잭션의 작업 처리 결과는 항상 일관성 있어야 한다.</p>
				</blockquote></li>
			<li><p>독립성(Isolation)</p>
				<blockquote>
					<p>둘 이상의 트랜잭션이 동시에 병행 실행되고 있을 때, 어떤 트랜잭션도 다른 트랜잭션 연산에 끼어들 수 없다.</p>
				</blockquote></li>
			<li><p>지속성(Durability)</p>
				<blockquote>
					<p>트랜잭션이 성공적으로 완료되었으면, 결과는 영구적으로 반영되어야 한다.</p>
				</blockquote></li>
		</ul>
		<br>
		<h5 id="commit">
			<a href="#commit" class="header-anchor">#</a> Commit
		</h5>
		<p>하나의 트랜잭션이 성공적으로 끝났고, DB가 일관성있는 상태일 때 이를 알려주기 위해 사용하는 연산</p>
		<br>
		<h5 id="rollback">
			<a href="#rollback" class="header-anchor">#</a> Rollback
		</h5>
		<p>하나의 트랜잭션 처리가 비정상적으로 종료되어 트랜잭션 원자성이 깨진 경우</p>
		<p>transaction이 정상적으로 종료되지 않았을 때, last consistent state (예)
			Transaction의 시작 상태) 로 roll back 할 수 있음.</p>
		<br>
		<p>
			<em>상황이 주어지면 DB 측면에서 어떻게 해결할 수 있을지 대답할 수 있어야 함</em>
		</p>
		<br>
		<hr>
		<br>
		<h4 id="transaction-관리를-위한-dbms의-전략">
			<a href="#transaction-관리를-위한-dbms의-전략"
				class="header-anchor">#</a> Transaction 관리를 위한 DBMS의 전략
		</h4>
		<p>이해를 위한 2가지 개념 : DBMS의 구조 / Buffer 관리 정책</p>
		<br>
		<ol>
			<li>DBMS의 구조</li>
		</ol>
		<blockquote>
			<p>크게 2가지 : Query Processor (질의 처리기), Storage System (저장 시스템)</p>
			<p>입출력 단위 : 고정 길이의 page 단위로 disk에 읽거나 쓴다.</p>
			<p>저장 공간 : 비휘발성 저장 장치인 disk에 저장, 일부분을 Main Memory에 저장</p>
		</blockquote>
		<img
			src="https://d2.naver.com/content/images/2015/06/helloworld-407507-1.png">
		<br>
		<ol start="2">
			<li>Page Buffer Manager or Buffer Manager</li>
		</ol>
		<p>DBMS의 Storage System에 속하는 모듈 중 하나로, Main Memory에 유지하는 페이지를 관리하는
			모듈</p>
		<blockquote>
			<p>Buffer 관리 정책에 따라, UNDO 복구와 REDO 복구가 요구되거나 그렇지 않게 되므로,
				transaction 관리에 매우 중요한 결정을 가져온다.</p>
		</blockquote>
		<br>
		<ol start="3">
			<li>UNDO</li>
		</ol>
		<p>
			필요한 이유 : 수정된 Page들이 **<u>Buffer 교체 알고리즘에 따라서 디스크에 출력</u>**될 수 있음.
			Buffer 교체는 <strong><u>transaction과는 무관하게 buffer의 상태에
					따라서, 결정됨</u></strong>. 이로 인해, 정상적으로 종료되지 않은 transaction이 변경한 page들은 원상 복구 되어야
			하는데, 이 복구를 undo라고 함.
		</p>
		<ul>
			<li><p>2개의 정책 (수정된 페이지를 디스크에 쓰는 시점으로 분류)</p>
				<p>steal : 수정된 페이지를 언제든지 디스크에 쓸 수 있는 정책</p>
				<ul>
					<li>대부분의 DBMS가 채택하는 Buffer 관리 정책</li>
					<li>UNDO logging과 복구를 필요로 함.</li>
				</ul> <br>
				<p>¬steal : 수정된 페이지들을 EOT (End Of Transaction)까지는 버퍼에 유지하는 정책</p>
				<ul>
					<li>UNDO 작업이 필요하지 않지만, 매우 큰 메모리 버퍼가 필요함.</li>
				</ul></li>
		</ul>
		<br>
		<ol start="4">
			<li>REDO</li>
		</ol>
		<p>이미 commit한 transaction의 수정을 재반영하는 복구 작업</p>
		<p>Buffer 관리 정책에 영향을 받음</p>
		<ul>
			<li><p>Transaction이 종료되는 시점에 해당 transaction이 수정한 page를 디스크에
					쓸 것인가 아닌가로 기준.</p> <br>
				<p>FORCE : 수정했던 모든 페이지를 Transaction commit 시점에 disk에 반영</p>
				<p>transaction이 commit 되었을 때 수정된 페이지들이 disk 상에 반영되므로 redo 필요 없음.</p>
				<br>
				<p>¬FORCE : commit 시점에 반영하지 않는 정책</p>
				<p>transaction이 disk 상의 db에 반영되지 않을 수 있기에 redo 복구가 필요. (대부분의
					DBMS 정책)</p> <br> <br></li>
		</ul>
		<h4 id="참고사항">
			<a href="#참고사항" class="header-anchor">#</a> [참고사항]
		</h4>
		<ul>
			<li><a href="https://d2.naver.com/helloworld/407507"
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