<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>java란</title>
</head>
<body>
<div class="theme-default-content content__default">
		<h1 id="삽입-정렬-insertion-sort">
			<a href="#삽입-정렬-insertion-sort" class="header-anchor">#</a>
			JAVA란?
		</h1>
		<hr>
		<h3 id="goal">
			<a href="#goal" class="header-anchor">#</a> JAVA 정의
		</h3>
		<hr>
			<p>Java 는 Sun Microsystems 가 1995년에 처음 출시한 프로그래밍 언어 및 컴퓨팅 플랫폼이다. Java 코드는 다양한 하드웨어 및 운영 체제에서 실행할 수 있는 이식 가능하도록 설계된 클래스 기반 객체 지향 언어이다.</p>
			<p> Java 는 엔터프라이즈급 애플리케이션, 모바일 앱, 비디오 게임 및 기타 유형의 소프트웨어 개발에 널리 사용된다. JVM ( Java Virtual Machine)을 지원하는 모든 플랫폼에서 실행되도록 Java 코드를 컴파일할 수 있으므로 "한 번 작성하고 어디서나 실행" 철학으로 잘 알려져 있다. 또한 Java 에는 개발자를 위한 풍부한 라이브러리와 프레임워크가 포함된 크고 활동적인 에코시스템이 있다.</p>
            <p>Java 는 메모리 관리 및 자동 예외 처리와 같은 기능을 통해 처음부터 보안을 유지하도록 설계되었기 때문에 보안 기능으로도 유명합니다. "가비지 수집기"라고 하는 Java의 메모리 관리 기능은 더 이상 사용하지 않는 메모리를 자동으로 해제하여 메모리 누수 가능성을 줄인다. 자동 예외 처리 기능을 사용하면 개발자가 예기치 않은 오류를 처리할 수 있는 강력한 코드를 더 쉽게 작성할 수 있다.</p>
		    <p>Java 의 또 다른 중요한 기능은 단일 프로그램 내에서 여러 실행 스레드를 동시에 실행할 수 있는 멀티스레딩 지원한다. 이를 통해 사용자가 프로그램과 상호 작용하는 동안 백그라운드 작업 실행과 같은 다양한 작업을 동시에 수행할 수 있다. 전반적으로 Java 는 산업, 오픈 소스 및 학계에서 널리 사용되는 강력하고 다재다능하며 성숙한 프로그래밍 언어다. 휴대성, 보안 및 성능은 다양한 프로젝트에 탁월한 선택이다.</p>
		<h3 id="abstract">
			<a href="#abstract" class="header-anchor">#</a> JAVA 용어
		</h3>
		<hr>
		<ul>
			<li><strong>Class:</strong> 클래스는 개체를 만들기 위한 템플릿 또는 청사진이다. 개체의 속성과 메서드를 정의한다.</li>
			<li><strong>Object:</strong> 클래스의 인스턴스. 개체에는 클래스에 의해 정의된 속성과 메서드가 있다.</li>
			<li><strong>Method:</strong> 특정 작업을 수행하기 위해 개체에서 호출할 수 있는 함수 또는 루틴이다.</li>
			<li><strong>Inheritance: </strong>한 클래스가 부모 클래스에서 속성과 메서드를 상속하는 기능이다. 이를 통해 코드를 재사용하고 보다 전문화된 클래스를 생성할 수 있다.</li>
			<li><strong>Interface: </strong> 클래스가 구현해야 하는 메서드 집합이다. 인터페이스는 따라야 할 과정에 대한 계약을 정의하는 데 사용된다.</li>
			<li><strong>Package:</strong> 관련 클래스 및 인터페이스의 그룹입니다. 패키지는 코드를 구성하고 이름 충돌을 방지하는 데 사용된다.</li>
			<li><strong>JRE ( Java Runtime Environment):</strong> Java 응용 프로그램이 실행되는 소프트웨어 환경입니다. 여기에는 JVM 과 라이브러리 세트 및 기타 파일이 포함된다.</li>
			<li><strong>JDK ( Java Development Kit):</strong> JRE, 컴파일러 및 기타 도구를 포함하여 Java 애플리케이션을 개발하기 위한 도구 세트이다.</li>
			<li><strong>JIT (Just-In-Time) Compiler: </strong> 런타임에 Java 바이트 코드를 기계 코드로 컴파일하는 JVM 의 기능이다. 이는 Java 애플리케이션의 성능을 향상시킨다.</li>
			<li><strong>Garbage Collection: </strong>프로그램에서 더 이상 사용하지 않는 메모리를 자동으로 해제하는 JVM 의 기능이다. 이는 메모리 누수 및 기타 메모리 관련 문제를 방지하는 데 도움이 된다.</li>
			
			
		</ul>
		<h3 id="process-ascending">
			<a href="#process-ascending" class="header-anchor">#</a> JAVA의 기본/주요 기능
		</h3>
		<hr>
		<ul>
		<li><strong>객체 지향 프로그래밍 :</strong> Java 는 클래스 기반의 객체 지향 프로그래밍 언어로 객체, 클래스 및 상속의 개념을 기반으로 한다. 이를 통해 다른 개발자가 쉽게 이해하고 유지 관리할 수 있는 재사용 가능한 모듈식 코드를 쉽게 만들 수 있다.</li>
		<li><strong>플랫폼 독립성 : </strong> Java 코드는 JVM ( Java Virtual Machine)이 설치된 모든 플랫폼에서 실행할 수 있는 바이트코드라는 중간 형식으로 컴파일된다. " WORA (Write Once, Run Anywhere)"로 알려진 이 기능을 통해 개발자는 코드를 한 번 작성하고 변경하지 않고 여러 플랫폼에서 실행할 수 있다.</li>
		<li><strong>메모리 관리 :</strong> Java의 자동 메모리 관리 및 가비지 수집 기능은 더 이상 사용되지 않는 프로그램의 메모리를 해제하여 메모리 누수 및 기타 메모리 관련 문제를 방지한다. 이를 통해 개발자는 예기치 않은 오류를 처리할 수 있는 강력한 코드를 더 쉽게 작성할 수 있다.</li>
		<li><strong>보안 : </strong> Java 는 시스템의 나머지 부분에서 신뢰할 수 없는 코드를 격리하는 Java sandbox 및 Java 애플리케이션에 보안 정책을 적용하는 보안 관리자와 같은 기능을 통해 처음부터 보안을 유지하도록 설계되었다.</li>
		<li><strong>API 및 라이브러리 : </strong>  Java 는 클래스 기반의 객체 지향 프로그래밍 언어로 객체, 클래스 및 상속의 개념을 기반으로 한다. 이를 통해 다른 개발자가 쉽게 이해하고 유지 관리할 수 있는 재사용 가능한 모듈식 코드를 쉽게 만들 수 있다. Java 에는 풍부한 API 와 개발자에게 다양한 기능을 제공하는 방대한 오픈 소스 라이브러리가 있다. 이러한 라이브러리와 프레임워크를 사용하면 개발자가 데이터베이스 연결, XML 처리 등과 같은 일반적인 작업을 더 쉽게 수행할 수 있다.</li>
		<li><strong>커뮤니티 및 생태계 :</strong> Java 에는 대규모의 활발한 개발자 커뮤니티가 있습니다. 즉, 개발자가 언어를 배우고 사용하는 데 도움이 되는 리소스, 자습서 및 포럼이 많이 있다. 또한 활성 에코시스템에는 개발자가 애플리케이션을 구축하는 데 사용할 수 있는 다양한 프레임워크와 라이브러리가 포함되어 있다.</li>
		</ul>
		
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a> Java 에 사용되는 언어
		</h3>
		<hr>
		<div class="language-java extra-class">
			
			<p>Java 는 소프트웨어 응용 프로그램을 작성하는 데 사용되는 프로그래밍 언어이다. 다른 언어로 작성되지 않았다. Java 코드는 JVM ( Java Virtual Machine)이 설치된 모든 플랫폼에서 실행할 수 있는 바이트코드로 컴파일된다.</p>
			<p>Java 는 C++ 및 Smalltalk와 같은 다른 프로그래밍 언어의 영향을 받으며 단순하고 객체 지향적이며 다양한 플랫폼에서 이식 가능하도록 설계되었다. 1990년대 초 Sun Microsystems (이후 Oracle에 인수됨)의 James Gosling이 플랫폼 독립적인 대화형 텔레비전 시스템으로 만들었다.</p>

		</div>
		<br>
		<h3 id="gif로-이해하는-insertion-sort">
			<a href="#gif로-이해하는-insertion-sort" class="header-anchor">#</a>
			Java 는 무엇을 위해 사용됩니까?
		</h3>
		<hr>
		<p>
			Java 는 다양한 유형의 소프트웨어 응용 프로그램을 만드는 데 널리 사용되는 범용 프로그래밍 언어이다. 일반적으로 고객 관계 관리 시스템 , 전사적 자원 계획 시스템 및 공급망 관리 시스템과 같은 엔터프라이즈급 애플리케이션을 개발하는 데 사용된다. 또한 Android 모바일 애플리케이션, 웹 애플리케이션, 웹 서버 및 애플리케이션 서버, 게임, 과학 애플리케이션, 금융 애플리케이션 등을 개발하는 데 사용된다. 또한 Java의 방대한 라이브러리와 프레임워크를 사용하면 개발자가 데이터베이스와 상호 작용하고 XML을 처리하고 기타 일반적인 작업을 수행할 수 있는 응용 프로그램을 쉽게 구축할 수 있다.
		</p>
		<a href="https://appmaster.io/ko/blog/java-jeongyi-yimi-gineungiran-mueosibnigga"><img src="https://appmaster.io/cdn-cgi/image/width=1024,quality=83,format=auto/api/_files/YUkrLbmgYEyjyKCPfgP3Ae/download/" alt=""></a>
		<p>
			Java 는 다양한 소프트웨어 응용 프로그램을 만드는 데 사용할 수 있는 강력하고 널리 사용되는 프로그래밍 언어이다. 그러나 특정 수준의 프로그래밍 전문 지식이 필요하며 개발 및 유지 관리에 많은 시간이 소요될 수 있다. 반대로 no-code 플랫폼에서는 사용자가 코드를 작성하지 않고도 소프트웨어 애플리케이션을 만들 수 있다. 프로그래밍 경험이 없는 사람이나 코딩에 많은 시간을 투자하지 않고 빠르게 프로토타입을 만들고 싶은 사람에게 좋은 선택이 될 수 있다. 또한 no-code 플랫폼에는 사용자 친화적인 drag-and-drop 인터페이스가 있어 사용자가 기본 코드를 이해하지 않고도 응용 프로그램을 쉽게 만들고 테스트할 수 있다. 완전한 기능을 갖춘 Java 애플리케이션을 보유함으로써 얻을 수 있는 이점이 개발 비용과 복잡성을 능가하지 않을 수 있는 보다 효율적인 솔루션이 될 수 있다.
		</p>
		
		<br>
		<h3 id="conclusion">
			<a href="#conclusion" class="header-anchor">#</a>결론
		</h3>
		<hr>
		<p>
			결론적으로 Java 는 기술 세계에 상당한 영향을 미친 다재다능하고 강력한 프로그래밍 언어입니다. 여러 도메인과 응용 프로그램에서 사용할 수 있는 기능, 보안 기능 및 사용 용이성은 모바일 앱 및 웹 사이트에서 과학 연구 및 금융 거래에 이르기까지 모든 수준의 개발자에게 귀중한 선택이다. Java 는 우리가 매일 의존하는 많은 도구와 시스템을 지원한다.
		</p>
		<p>"Write Once, Run Anywhere" 철학과 라이브러리 및 프레임워크의 대규모 에코시스템을 갖춘 Java 는 계속해서 개발자들 사이에서 인기 있는 선택이다. 클래스, 객체, 메서드, 상속 및 인터페이스와 같은 Java 와 관련된 주요 용어 및 개념을 이해하는 것은 언어 학습에 관심이 있는 모든 사람에게 중요하다.</p>

		<br>
		
		<h4 id="참고-자료">
			<a href="#참고-자료" class="header-anchor">#</a> 출처
		</h4>
		<hr>
		<ul>
			<li><a
				href="https://appmaster.io/ko/blog/java-jeongyi-yimi-gineungiran-mueosibnigga"
				target="_blank" rel="noopener noreferrer">출처 : https://appmaster.io/ko/blog/java-jeongyi-yimi-gineungiran-mueosibnigga<span></span></a></li>
		</ul>
	</div>
	<div class="contents-comment"></div>


</body>
</html>