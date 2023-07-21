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
<title>DB란?</title>
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
			Database란?
		</h1>
		<hr>
		<h3 id="goal">
			<a href="#goal" class="header-anchor">#</a> Database 정의
		</h3>
		<hr>
			<p>데이터베이스는 구조화된 정보 또는 데이터의 조직화된 모음으로서 일반적으로 컴퓨터 시스템에 전자적으로 저장된다. 데이터베이스는 일반적으로 데이터베이스 관리 시스템(DBMS)에 의해 제어된다. 연결된 애플리케이션과 함께 데이터와 DBMS를 하나로 묶어 데이터베이스 시스템이라고 하며 단축하여 데이터베이스라고도 한다.</p>
			<p>오늘날 운영되고 있는 가장 일반적인 유형의 데이터베이스에서 데이터는 일반적으로 처리 및 데이터 쿼리를 효율적으로 수행하기 위해 일련의 테이블에서 행과 열로 모델링된다. 그러면 데이터에 쉽게 액세스하고 관리, 수정, 업데이트, 제어 및 구성할 수 있다. 대부분의 데이터베이스는 데이터 작성 및 쿼리에 SQL(Structured Query Language)을 사용한다.</p>
         
		<h3 id="abstract">
			<a href="#abstract" class="header-anchor">#</a> SQL(Structured Query Language)이란?
		</h3>
		<hr>
		<p>SQL은 데이터를 쿼리, 조작 및 정의하고 액세스 제어를 제공하기 위해 거의 모든 관계형 데이터베이스에서 사용되는 프로그래밍 언어이다. SQL은 1970년대에 IBM에서 처음 개발되었으며 Oracle의 적극적인 공헌으로 SQL ANSI 표준이 수립되기에 이르렀다. SQL은 IBM, Oracle 및 Microsoft와 같은 많은 회사들의 확장 프로젝트를 촉진했다. SQL은 오늘날에도 널리 사용되고 있지만 새로운 프로그래밍 언어가 등장하기 시작했다.</p>
		<h3 id="process-ascending">
			<a href="#process-ascending" class="header-anchor">#</a> 데이터베이스 유형
		</h3>
		<hr>
		<ul>
		<li><strong>관계형 데이터베이스:</strong> 관계형 데이터베이스는 1980년대를 지배했다. 관계형 데이터베이스의 항목은 열과 행이 있는 테이블 집합으로 구성된다. 관계형 데이터베이스 기술은 정형 정보에 액세스하는 가장 효율적이고 유연한 방법을 제공한다.</li>
		<li><strong>객체 지향 데이터베이스:</strong> 객체 지향 데이터베이스의 정보는 객체 지향 프로그래밍과 마찬가지로 객체 형태로 표현된다.</li>
		<li><strong>분산 데이터베이스:</strong> 분산 데이터베이스는 서로 다른 사이트에 위치한 둘 이상의 파일로 구성된다. 데이터베이스는 물리적으로 동일한 위치에 있는 여러 컴퓨터에 저장되거나 다른 네트워크에 분산될 수 있다.</li>
		<li><strong>데이터 웨어하우스: </strong> 데이터의 중앙 저장소인 데이터 웨어하우스는 빠른 쿼리 및 분석을 위해 특별히 설계된 데이터베이스 유형이다.</li>
		<li><strong>NoSQL 데이터베이스: </strong>  NoSQL 또는 비관계형 데이터베이스를 사용하면 비정형 및 반정형 데이터를 저장하고 조작할 수 있다(반면에 관계형 데이터베이스에서는 데이터베이스에 삽입되는 모든 데이터의 구성 방식을 정의해야 함). 웹 애플리케이션이 보다 보편화되고 복잡해지면서 NoSQL 데이터베이스의 인기가 높아졌다.</li>
		<li><strong>그래프 데이터베이스 :</strong> 그래프 데이터베이스는 엔티티 및 엔티티 간의 관계 측면에서 데이터를 저장한다.</li>
		<li><strong>오픈 소스 데이터베이스 :</strong> 오픈 소스 데이터베이스 시스템은 소스 코드가 오픈 소스인 시스템으로, SQL 또는 NoSQL 데이터베이스가 여기에 해당된다.</li>
		<li><strong>클라우드 데이터베이스:</strong> 클라우드 데이터베이스는 프라이빗, 퍼블릭 또는 하이브리드 클라우드 컴퓨팅 플랫폼에 상주하는 정형 또는 비정형 데이터 모음이다. 클라우드 데이터베이스 모델 유형으로는 기존 및 서비스형 데이터베이스(DBaaS)가 있다. DBaaS에서는 서비스 제공자가 관리 작업과 유지 관리를 수행한다.</li>
		<li><strong>다중 모델 데이터베이스:</strong> 다중 모델 데이터베이스는 서로 다른 유형의 데이터베이스 모델을 단일 통합 백엔드로 결합한다. 이는 다양한 데이터 유형을 수용할 수 있다는 것을 의미한다.</li>
		<li><strong>문서/JSON 데이터베이스:</strong> 문서 지향 정보를 저장, 검색 및 관리하도록 설계된 문서 데이터베이스는 행과 열이 아닌 JSON 형식으로 데이터를 저장하는 최신 방식이다.</li>
		<li><strong>자율 운영 데이터베이스:</strong> 가장 획기적인 최신 유형의 데이터베이스인 자율구동 데이터베이스(자율운영 데이터베이스라고도 함)는 클라우드를 기반으로 하며, 머신러닝을 사용하여 데이터베이스 튜닝, 보안, 백업, 업데이트 및 기타 데이터베이스 관리자가 전통적으로 수행해 온 일상적인 관리 작업을 자동화한다.</li>
		</ul>
		
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a> 데이터베이스 소프트웨어란?
		</h3>
		<hr>
		<div class="language-java extra-class">
			
			<p>데이터베이스 소프트웨어는 데이터베이스 파일 및 기록을 생성, 편집 및 유지하는 데 사용되므로 파일 및 기록 생성, 데이터 입력, 데이터 편집, 업데이트 및 보고를 보다 쉽게 수행할 수 있다. 또한 이 소프트웨어는 데이터 저장, 백업, 보고, 다중 액세스 제어 및 보안도 처리한다. 오늘날 데이터 범죄가 더 빈번해짐에 따라 강력한 데이터베이스 보안이 특히 중요하다. 데이터베이스 소프트웨어는 "데이터베이스 관리 시스템"(DBMS)이라고도 한다.</p>
			<p>데이터베이스 소프트웨어는 사용자가 데이터를 구조화된 형태로 저장한 다음 액세스할 수 있도록 하여 데이터 관리를 간소화한다. 일반적으로 데이터를 생성하고 관리하는 데 도움이 되는 그래픽 인터페이스가 있으며 경우에 따라 사용자는 데이터베이스 소프트웨어를 사용하여 데이터베이스를 구성한다.</p>

		</div>
		<br>
		<h3 id="gif로-이해하는-insertion-sort">
			<a href="#gif로-이해하는-insertion-sort" class="header-anchor">#</a>
			데이터베이스 관리 시스템(DBMS)이란?
		</h3>
		<hr>
		<p>데이터베이스에는 일반적으로 데이터베이스 관리 시스템(DBMS)으로 알려진 포괄적인 데이터베이스 소프트웨어 프로그램이 필요하다. DBMS는 데이터베이스와 최종 사용자 또는 프로그램 간의 인터페이스 역할을 하여 사용자가 정보의 구성 및 최적화 방법을 검색, 업데이트 및 관리할 수 있게 해준다. 또한 DBMS는 데이터베이스의 감독 및 제어가 용이하여 성능 모니터링, 튜닝, 백업, 복구 같은 다양한 관리 작업이 가능하다.</p>
		<br>
		
		<h3 id="definition">
			<a href="#definition" class="header-anchor">#</a>MySQL Database란?
		</h3>
		<hr>
		<p>
			MySQL은 SQL 기반의 오픈 소스 관계형 데이터베이스 관리 시스템이다. 웹 애플리케이션용으로 설계 및 최적화되었기 때문에 모든 플랫폼에서 실행할 수 있다. 인터넷에서 새롭고 다른 요구 사항이 등장하면서 MySQL는 웹 개발자 및 웹 기반 애플리케이션에 적합한 플랫폼이 되었다. MySQL은 수백만 건의 질의와 수천 건의 트랜잭션을 처리하도록 설계되었기 때문에 여러 자금 이체를 관리해야 하는 전자상거래 기업에게 인기가 높다. 주문형 유연성은 MySQL의 주요 기능이다.
		</p>
		
		<br>
		<h3 id="conclusion">
			<a href="#conclusion" class="header-anchor">#</a>데이터베이스 과제
		</h3>
		<hr>
		<ul>
		<li>크게 증가한 데이터 볼륨 수용. 센서, 연결 기계 및 기타 수 십 개의 소스에서 들어오는 데이터가 폭발적으로 증가함에 따라 데이터베이스 관리자는 회사의 데이터를 효율적으로 관리하고 구성하기 위해 고군분투하고 있습니다.</li>
		<li>데이터 보안 보장. 데이터 보안 침해는 요즘 어디서든 발생하고 있으며, 해커들은 더욱 교묘해지고 있습니다. 데이터의 보안성을 유지하면서도 사용자가 손쉽게 액세스 할 수 있도록 하는 것이 그 어느 때 보다 중요해졌습니다.</li>
		<li>수요에 부응. 오늘날과 같이 빠르게 변화하는 비즈니스 환경에서 기업들이 적시에 의사 결정을 내리고 새로운 기회를 활용하기 위해서는 데이터에 실시간으로 액세스할 수 있는 능력이 필요합니다.</li>
		<li>데이터베이스 및 인프라 관리 및 유지. 데이터베이스 관리자는 데이터베이스에서 문제를 지속적으로 관찰하여 예방적 유지 관리를 수행하고, 소프트웨어 업그레이드 및 패치 적용을 수행해야 합니다. 데이터베이스가 더욱 복잡해지고 데이터 볼륨이 증가함에 따라 기업은 데이터베이스를 모니터링 및 튜닝하기 위한 인력을 추가로 고용해야 하는 비용적 부담을 안게 되었습니다.</li>
		<li>확장성에 대한 한계 극복. 기업이 생존하기 위해서는 성장이 필요하며, 데이터 관리도 이와 함께 성장해야 합니다. 그러나 데이터베이스 관리자가 특히 온프레미스 데이터베이스에서 회사에 필요한 용량을 예측하기란 매우 어렵습니다.</li>
		<li>데이터 레지던시, 데이터 주권 또는 대기 시간 요구사항을 보장합니다. 일부 조직에서는 온프레미스에서 실행하는 데 보다 적합한 사용 사례를 사용하고 있습니다. 이러한 경우 데이터베이스 실행을 위해 사전 구성되고 사전 최적화되어 있는 엔지니어드 시스템이 적합합니다.</li>
		</ul>
		<br>
		
		<h4 id="참고-자료">
			<a href="#참고-자료" class="header-anchor">#</a> 출처
		</h4>
		<hr>
		<ul>
			<li><a
				href="https://www.oracle.com/kr/database/what-is-database/"
				target="_blank" rel="noopener noreferrer">출처 : https://www.oracle.com/kr/database/what-is-database/<span></span></a></li>
		</ul>
	</div>
	<div class="contents-comment"></div>
<jsp:include page="/footer"></jsp:include>
<script src="../resources/script/contentView"></script>

</body>
</html>