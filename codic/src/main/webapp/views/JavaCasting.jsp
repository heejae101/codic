<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Casting</title>
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

<div class="theme-default-content content__default"><h1 id="java-casting-업캐스팅-다운캐스팅"><a href="#java-casting-업캐스팅-다운캐스팅" class="header-anchor">#</a> [Java] Casting(업캐스팅 &amp; 다운캐스팅)</h1> <hr> <br> <h3 id="캐스팅이란"><a href="#캐스팅이란" class="header-anchor">#</a> 캐스팅이란?</h3> <blockquote><p>변수가 원하는 정보를 다 갖고 있는 것</p></blockquote> <br> <div class="language-java extra-class"><pre class="language-java"><code><span class="token keyword">int</span> a <span class="token operator">=</span> <span class="token number">0.1</span><span class="token punctuation">;</span> <span class="token comment">// (1) 에러 발생 X</span>
<span class="token keyword">int</span> b <span class="token operator">=</span> <span class="token punctuation">(</span><span class="token keyword">int</span><span class="token punctuation">)</span> <span class="token boolean">true</span><span class="token punctuation">;</span> <span class="token comment">// (2) 에러 발생 O, boolean은 int로 캐스트 불가</span>
</code></pre></div><br> <p>(1)은 0.1이 double형이지만, int로 될 정보 또한 가지고 있음</p> <p>(2)는 true는 int형이 될 정보를 가지고 있지 않음</p> <br> <h4 id="캐스팅이-필요한-이유는"><a href="#캐스팅이-필요한-이유는" class="header-anchor">#</a> 캐스팅이 필요한 이유는?</h4> <ol><li><strong>다형성</strong> : 오버라이딩된 함수를 분리해서 활용할 수 있다.</li> <li><strong>상속</strong> : 캐스팅을 통해 범용적인 프로그래밍이 가능하다.</li></ol> <br> <h4 id="형변환의-종류"><a href="#형변환의-종류" class="header-anchor">#</a> 형변환의 종류</h4> <ol><li><p><strong>묵시적 형변환</strong> : 캐스팅이 자동으로 발생 (업캐스팅)</p> <div class="language-java extra-class"><pre class="language-java"><code><span class="token class-name">Parent</span> p <span class="token operator">=</span> <span class="token keyword">new</span> <span class="token class-name">Child</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// (Parent) new Child()할 필요가 없음</span>
</code></pre></div><blockquote><p>Parent를 상속받은 Child는 Parent의 속성을 포함하고 있기 때문</p></blockquote> <br></li> <li><p><strong>명시적 형변환</strong> : 캐스팅할 내용을 적어줘야 하는 경우 (다운캐스팅)</p> <div class="language-java extra-class"><pre class="language-java"><code><span class="token class-name">Parent</span> p <span class="token operator">=</span> <span class="token keyword">new</span> <span class="token class-name">Child</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token class-name">Child</span> c <span class="token operator">=</span> <span class="token punctuation">(</span><span class="token class-name">Child</span><span class="token punctuation">)</span> p<span class="token punctuation">;</span>
</code></pre></div><blockquote><p>다운캐스팅은 업캐스팅이 발생한 이후에 작용한다.</p></blockquote> <br></li></ol> <h4 id="예시-문제"><a href="#예시-문제" class="header-anchor">#</a> 예시 문제</h4> <div class="language-java extra-class"><pre class="language-java"><code><span class="token keyword">class</span> <span class="token class-name">Parent</span> <span class="token punctuation">{</span>
	<span class="token keyword">int</span> age<span class="token punctuation">;</span>

	<span class="token class-name">Parent</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span><span class="token punctuation">}</span>

	<span class="token class-name">Parent</span><span class="token punctuation">(</span><span class="token keyword">int</span> age<span class="token punctuation">)</span> <span class="token punctuation">{</span>
		<span class="token keyword">this</span><span class="token punctuation">.</span>age <span class="token operator">=</span> age<span class="token punctuation">;</span>
	<span class="token punctuation">}</span>

	<span class="token keyword">void</span> <span class="token function">printInfo</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
		<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Parent Call!!!!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
	<span class="token punctuation">}</span>
<span class="token punctuation">}</span>

<span class="token keyword">class</span> <span class="token class-name">Child</span> <span class="token keyword">extends</span> <span class="token class-name">Parent</span> <span class="token punctuation">{</span>
	<span class="token class-name">String</span> name<span class="token punctuation">;</span>

	<span class="token class-name">Child</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span><span class="token punctuation">}</span>

	<span class="token class-name">Child</span><span class="token punctuation">(</span><span class="token keyword">int</span> age<span class="token punctuation">,</span> <span class="token class-name">String</span> name<span class="token punctuation">)</span> <span class="token punctuation">{</span>
		<span class="token keyword">super</span><span class="token punctuation">(</span>age<span class="token punctuation">)</span><span class="token punctuation">;</span>
		<span class="token keyword">this</span><span class="token punctuation">.</span>name <span class="token operator">=</span> name<span class="token punctuation">;</span>
	<span class="token punctuation">}</span>

	<span class="token annotation punctuation">@Override</span> 
	<span class="token keyword">void</span> <span class="token function">printInfo</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>
		<span class="token class-name">System</span><span class="token punctuation">.</span>out<span class="token punctuation">.</span><span class="token function">println</span><span class="token punctuation">(</span><span class="token string">"Child Call!!!!"</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
	<span class="token punctuation">}</span>

<span class="token punctuation">}</span>

<span class="token keyword">public</span> <span class="token keyword">class</span> test <span class="token punctuation">{</span>
    <span class="token keyword">public</span> <span class="token keyword">static</span> <span class="token keyword">void</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token class-name">String</span><span class="token punctuation">[</span><span class="token punctuation">]</span> args<span class="token punctuation">)</span> <span class="token punctuation">{</span>
        <span class="token class-name">Parent</span> p <span class="token operator">=</span> <span class="token keyword">new</span> <span class="token class-name">Child</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
        
        p<span class="token punctuation">.</span><span class="token function">printInfo</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">// 문제1 : 출력 결과는?</span>
        <span class="token class-name">Child</span> c <span class="token operator">=</span> <span class="token punctuation">(</span><span class="token class-name">Child</span><span class="token punctuation">)</span> <span class="token keyword">new</span> <span class="token class-name">Parent</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span> <span class="token comment">//문제2 : 에러 종류는?</span>
    <span class="token punctuation">}</span>
<span class="token punctuation">}</span>
</code></pre></div><br> <h4 id="문제1-child-call"><a href="#문제1-child-call" class="header-anchor">#</a> 문제1 : <code>Child Call!!!!</code></h4> <p>자바에서는 오버라이딩된 함수를 동적 바인딩하기 때문에, Parent에 담겼어도 Child의 printInfo() 함수를 불러오게 된다.</p> <br> <h4 id="문제2-runtime-error"><a href="#문제2-runtime-error" class="header-anchor">#</a> 문제2 : <code>Runtime Error</code></h4> <p>컴파일 과정에서는 데이터형의 일치만 따진다. 프로그래머가 따로 (Child)로 형변환을 해줬기 때문에 컴파일러는 문법이 맞다고 생각해서 넘어간다. 하지만 런타임 과정에서 Child 클래스에 Parent 클래스를 넣을 수 없다는 것을 알게 되고, 런타임 에러가 나오게 되는것!</p></div>
	<div class="contents-comment"></div>
	<jsp:include page="/footer"></jsp:include>
</body>
</html>