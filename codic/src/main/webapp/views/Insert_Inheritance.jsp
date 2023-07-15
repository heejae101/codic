<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상속</title>
</head>
<body>
<div class="theme-default-content content__default">
		<h1 id="삽입-정렬-insertion-sort">
			<a href="#삽입-정렬-insertion-sort" class="header-anchor">#</a>
			상속(Inheritance)
		</h1>
		<hr>
		<h3 id="goal">
			<a href="#goal" class="header-anchor">#</a> Goal
		</h3>
		<hr>
		<ul>
			<li>Inheritance에 대해 설명할 수 있다.</li>
			<li>Inheritance 과정에 대해 설명할 수 있다.</li>
			<li>Inheritance을 통해 코드의 재사용을 구현할 수 있다.</li>
			<li>Inheritance의 Is A 상속관계와 Has a 포함관계의 차이를 설명할 수 있따.<li>
		</ul>
		<h3 id="abstract">
			<a href="#abstract" class="header-anchor">#</a> Abstract
		</h3>
		<hr>
		<p>부모 클래스(상위 클래스)와 자식 클래스(하위 클래스)가 있으며, 자식 클래스는 부모 클래스를 선택해서, 그 부모의 멤버를 상속받아 그대로 쓸 수 있게 된다.</p>
		<p>상속을 하더라도 자식 클래스가 부모의 모든 것들을 물려받는 것은 아니다.</p>
		<ul>
		<li>부모 클래스의 private 접근 제한을 갖는 필드 및 메소드는 자식이 물려받을 수 없다.</li>
		<li>부모와 자식 클래스가 서로 다른 패키지에 있다면, 부모의 default 접근 제한을 갖는 필드 및 메소드도 자식이 물려받을 수 없다.
(default 접근 제한은 ‘같은 패키지에 있는 클래스’만 접근이 가능하게끔 하는 접근 제한자이기 때문이다.)</li>
<li>그 이외의 경우는 모두 상속의 대상이 됩니다.</li>

		
		</ul>
		<h3 id="process-ascending">
			<a href="#process-ascending" class="header-anchor">#</a> Process
			(Ascending)
		</h3>
		<hr>
		<ol>
			<li>클래스간의 상속시에는 extends 키워드를 사용한다.</li>
			<li>extends 뒤에 한개의 클래스명만 작성 가능하다.<strong>(단일상속)</strong></li>
		</ol>
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a> Java Code
			(Ascending)
		</h3>
		<hr>
		<div class="language-java extra-class">
			<pre class="language-java">
			<p class="code_text"><strong>코드1</strong></p>
				<code>
					<span class="token keyword">public class</span> <span class="token class-name">ParentBook</span><span
						class="token punctuation">{
						</span><span class="token keyword">String</span> name<span
						class="token punctuation">;</span><span class="token comment">// 필드</span>
						<span class="token keyword">int</span> price<span
						class="token punctuation">;</span>
<span class="token keyword">public</span> <span class="token keyword">void</span> Print<span class="token punctuation">(</span><span
						class="token  punctuation">)</span> <span
						class="token punctuation">{</span> <span class="token comment">// 메소드</span><span class="token class-name">System</span><span
						class="token punctuation">.</span>out<span
						class="token punctuation">.</span><span class="token function">println</span><span
						class="token punctuation">(</span><span class="token punctuation">"</span>책의 이름과 가격 :<span
						class="token punctuation">"</span><span class="token operator">+</span>name<span class="token operator">+</span><span
						class="token punctuation">"</span> <span
						class="token punctuation">"</span><span class="token operator">+</span>price<span
						class="token punctuation">;</span>
<span class="token punctuation">}</span>
<span class="token punctuation">}</span>  
</code>
<p class="code_text"><strong>코드2</strong></p>
<code>
<span class="token keyword">public class</span> <span class="token class-name">ChildBook</span><span class="token keyword"> extends</span><span class="token class-name"> ParentBook</span><span class="token punctuation">{</span>
<span class="token class-name">ChildBook</span><span class="token punctuation">(</span><span class="token keyword">String</span> name<span class="token punctuation">,</span><span class="token keyword">int</span> price<span
						class="token punctuation">)</span><span class="token punctuation">{</span><span class="token comment">// 생성자</span>
						<span class="token function">this</span><span class="token punctuation">.</span>name<span class="token punctuation">=</span> name<span
						class="token punctuation">;</span><span class="token comment"> //ChildBook이 ParentBook의 필드를 상속받아 가능한 선언</span>
						<span class="token function">this</span><span class="token punctuation">.</span>price<span class="token punctuation">=</span> price<span
						class="token punctuation">;</span>
						
						<span class="token keyword">public static void</span><span class="token class-name"> main</span> <span class="token punctuation">(</span><span class="token keyword">String</span><span
						class="token punctuation">[</span><span class="token punctuation">]</span> args<span
						class="token punctuation">)</span><span class="token punctuation">{</span>
						<span class="token class-name">ChildBook</span> Child<span class="token operator">=</span><span class="token function">new</span><span class="token class-name">ChildBook</span> <span class="token punctuation">(</span><span class="token punctuation">"</span>왜 나는 너를 사랑하는가<span class="token punctuation">,</span> 10000<span
						class="token punctuation">)</span><span class="token punctuation">;</span>
						Chlid<span class="token punctuation">.</span><span class="token function">Print</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>
						<span class="token punctuation">}</span>
</code>
			</pre>
		</div>
		<ol>
			<li><p>상속받고자 하는 자식 클래스명 옆에 extends 키워드를 붙이고, 상속할 부모 클래스명을 적는다.</p></li>
			<li><p>자바는 다중 상속을 허용하지 않으므로, extends 뒤에는 하나의 부모 클래스만 와야한다.</p></li>
			<li><p>ChildBook클래스가 ParentBook의 필드와 메소드를 상속받았다.</p></li>
		</ol>
		<br>
		
		<h3 id="시간복잡도">
			<a href="#시간복잡도" class="header-anchor">#</a> Is A 상속관계
		</h3>
		<hr>
		<p>
		상속은 IS-A관계에서 사용하는 것이 가장 효율적이다.
		</p>
		<p>
		IS-A 관계(is a relationship, inheritance)는 일반적인 개념과 구체적인 개념의 관계이다.	
		</p>
		<blockquote>
		<p>
		예시
		<br>
        사람은 동물이다.
        <br>
        소는 동물이다.
        <br>
        새는 동물이다.
		</p>
		
		</blockquote>
		<p>
		즉, 일반 클래스를 구체화 하는 상황에서 상속을 사용한다.
		</p>
		<br>
		<h3 id="공간복잡도">
			<a href="#공간복잡도" class="header-anchor">#</a> Has A 포함관계
		</h3>
		<hr>
		<p>HAS-A 관계에서는 상속을 사용하지 않는다.</p>           
		<p>HAS-A 관계(has a relationship, association)는 일반적인 포함 개념의 관계이다.</p>
        <p> 
        예시로, 과목 클래스를 포함하는 학생 클래스의 경우 과목 클래스의 코드를 재사용 하기 위해 상속을 사용하지는 않는다!
		</p>
		<br>
		<h3 id="장점">
			<a href="#장점" class="header-anchor">#</a> 장점
		</h3>
		<hr>
		<ul>
			<li><p>적은 양의 코드로 새로운 클래스를 작성 가능하다.</p></li>
			<li><p>코드를 공통적으로 관리하기 때문에 여러 코드의 추가 및 변경이 용이하다.</p></li>
			<li><p>중복을 제거해서 생산성과 쉬운 유지보수성에 크게 기여한다.</p></li>
		</ul>
		<br>
		<h3 id="단점">
			<a href="#단점" class="header-anchor">#</a> 단점
		</h3>
		<hr>
		<ul>
			<li><p>강한 결합이 강제된다.</p></li>
			<li><p>접근자에대한 제약이 강하게 걸린다.</p></li>
			<li><p>정적인 코드가 된다.</p></li>
			<li><p>캡슐화와 은닉을 깨뜨릴 수 있다.</p></li>
			<li><p>복잡한 구조를 갖게 된다.</p></li>
			<li><p>하위 클래스에서 동작을 100% 확신할 수는 없다.</p></li>
			<li><p>하위 클래스는 선택권이 없다.</p></li>
			<li><p>상속은 딱 한번만 가능하다.</p></li>
		</ul>
		<br>
		<h3 id="conclusion">
			<a href="#conclusion" class="header-anchor">#</a> Conclusion
		</h3>
		<hr>
		<p>상속은 extends를 통해 부모의 필드와 메소드를 자식에게 물려주는 방식으로 클래스의 재사용을 통해 효율으로 개발을 할 수 있다. </p>
		<br>
		<h4 id="참고-자료">
			<a href="#참고-자료" class="header-anchor">#</a> [참고 자료]
		</h4>
		<ul>
			<li><a
				href="https://chanhuiseok.github.io/posts/java-1/"
				target="_blank" rel="noopener noreferrer">링크1<span><svg
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							focusable="false" x="0px" y="0px" viewBox="0 0 100 100"
							width="15" height="15" class="icon outbound">
							<path fill="currentColor"
								d="M18.8,85.1h56l0,0c2.2,0,4-1.8,4-4v-32h-8v28h-48v-48h28v-8h-32l0,0c-2.2,0-4,1.8-4,4v56C14.8,83.3,16.6,85.1,18.8,85.1z"></path> <polygon
								fill="currentColor"
								points="45.7,48.7 51.3,54.3 77.2,28.5 77.2,37.2 85.2,37.2 85.2,14.9 62.8,14.9 62.8,22.9 71.5,22.9"></polygon></svg>
						<span class="sr-only">(opens new window)</span></span></a></li>
						<li><a
				href="https://backenddeveloper.tistory.com/7"
				target="_blank" rel="noopener noreferrer">링크2<span><svg
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							focusable="false" x="0px" y="0px" viewBox="0 0 100 100"
							width="15" height="15" class="icon outbound">
							<path fill="currentColor"
								d="M18.8,85.1h56l0,0c2.2,0,4-1.8,4-4v-32h-8v28h-48v-48h28v-8h-32l0,0c-2.2,0-4,1.8-4,4v56C14.8,83.3,16.6,85.1,18.8,85.1z"></path> <polygon
								fill="currentColor"
								points="45.7,48.7 51.3,54.3 77.2,28.5 77.2,37.2 85.2,37.2 85.2,14.9 62.8,14.9 62.8,22.9 71.5,22.9"></polygon></svg>
						<span class="sr-only">(opens new window)</span></span></a></li>
							<li><a
				href="https://jake-seo-dev.tistory.com/404"
				target="_blank" rel="noopener noreferrer">링크3<span><svg
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

</body>
</html>