<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>삽입정렬</title>
=======
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<title>Insert title here</title>
>>>>>>> refs/remotes/origin/YuHyeonho
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
			삽입 정렬(Insertion Sort)
		</h1>
		<hr>
		<h3 id="goal">
			<a href="#goal" class="header-anchor">#</a> Goal
		</h3>
		<hr>
		<ul>
			<li>Insertion Sort에 대해 설명할 수 있다.</li>
			<li>Insertion Sort 과정에 대해 설명할 수 있다.</li>
			<li>Insertion Sort을 구현할 수 있다.</li>
			<li>Insertion Sort의 시간복잡도와 공간복잡도를 계산할 수 있다.</li>
			<li>Insertion Sort와 Selection Sort 차이에 대해 설명할 수 있다.</li>
		</ul>
		<h3 id="abstract">
			<a href="#abstract" class="header-anchor">#</a> Abstract
		</h3>
		<hr>
		<p>손 안의 카드를 정렬하는 방법과 유사하다.</p>
		<p>Insertion Sort는 Selection Sort와 유사하지만, 좀 더 효율적인 정렬 알고리즘이다.</p>
		<p>
			Insertion Sort는 <strong>2번째 원소부터 시작하여 그 앞(왼쪽)의 원소들과 비교하여 삽입할
				위치를 지정한 후, 원소를 뒤로 옮기고 지정된 자리에 자료를 삽입</strong> 하여 정렬하는 알고리즘이다.
		</p>
		<p>최선의 경우 O(N)이라는 엄청나게 빠른 효율성을 가지고 있어, 다른 정렬 알고리즘의 일부로 사용될 만큼 좋은
			정렬 알고리즘이다.</p>
		<h3 id="process-ascending">
			<a href="#process-ascending" class="header-anchor">#</a> Process
			(Ascending)
		</h3>
		<hr>
		<ol>
			<li>정렬은 2번째 위치(index)의 값을 temp에 저장한다.</li>
			<li>temp와 이전에 있는 원소들과 비교하며 삽입해나간다.</li>
			<li>'1'번으로 돌아가 다음 위치(index)의 값을 temp에 저장하고, 반복한다.</li>
		</ol>
		<h3 id="java-code-ascending">
			<a href="#java-code-ascending" class="header-anchor">#</a> Java Code
			(Ascending)
		</h3>
		<hr>
		<div class="language-java extra-class">
			<pre class="language-java">
				<code>
					<span class="token keyword">void</span> <span
						class="token function">insertionSort</span><span
						class="token punctuation">(</span><span class="token keyword">int</span><span
						class="token punctuation">[</span><span class="token punctuation">]</span> arr<span
						class="token punctuation">)</span>
<span class="token punctuation">{</span>
   <span class="token keyword">for</span><span class="token punctuation">(</span><span
						class="token keyword">int</span> index <span
						class="token operator">=</span> <span class="token number">1</span> <span
						class="token punctuation">;</span> index <span
						class="token operator">&lt;</span> arr<span
						class="token punctuation">.</span>length <span
						class="token punctuation">;</span> index<span
						class="token operator">++</span><span class="token punctuation">)</span><span
						class="token punctuation">{</span> <span class="token comment">// 1.</span>
      <span class="token keyword">int</span> temp <span
						class="token operator">=</span> arr<span class="token punctuation">[</span>index<span
						class="token punctuation">]</span><span class="token punctuation">;</span>
      <span class="token keyword">int</span> prev <span
						class="token operator">=</span> index <span class="token operator">-</span> <span
						class="token number">1</span><span class="token punctuation">;</span>
      <span class="token keyword">while</span><span
						class="token punctuation">(</span> <span class="token punctuation">(</span>prev <span
						class="token operator">&gt;=</span> <span class="token number">0</span><span
						class="token punctuation">)</span> <span class="token operator">&amp;&amp;</span> <span
						class="token punctuation">(</span>arr<span
						class="token punctuation">[</span>prev<span
						class="token punctuation">]</span> <span class="token operator">&gt;</span> temp<span
						class="token punctuation">)</span> <span class="token punctuation">)</span> <span
						class="token punctuation">{</span>    <span class="token comment">// 2.</span>
         arr<span class="token punctuation">[</span>prev<span
						class="token operator">+</span><span class="token number">1</span><span
						class="token punctuation">]</span> <span class="token operator">=</span> arr<span
						class="token punctuation">[</span>prev<span
						class="token punctuation">]</span><span class="token punctuation">;</span>
         prev<span class="token operator">--</span><span
						class="token punctuation">;</span>
      <span class="token punctuation">}</span>
      arr<span class="token punctuation">[</span>prev <span
						class="token operator">+</span> <span class="token number">1</span><span
						class="token punctuation">]</span> <span class="token operator">=</span> temp<span
						class="token punctuation">;</span>                           <span
						class="token comment">// 3.</span>
   <span class="token punctuation">}</span>
   <span class="token class-name">System</span><span
						class="token punctuation">.</span>out<span
						class="token punctuation">.</span><span class="token function">println</span><span
						class="token punctuation">(</span><span class="token class-name">Arrays</span><span
						class="token punctuation">.</span><span class="token function">toString</span><span
						class="token punctuation">(</span>arr<span
						class="token punctuation">)</span><span class="token punctuation">)</span><span
						class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code>
			</pre>
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
			GIF로 이해하는 Insertion Sort
		</h3>
		<hr>
		<p>
			<a
				href="https://github.com/GimunLee/tech-refrigerator/blob/master/Algorithm/resources/insertion-sort-001.gif"
				target="_blank" rel="noopener noreferrer"><img
				src="https://github.com/GimunLee/tech-refrigerator/raw/master/Algorithm/resources/insertion-sort-001.gif"
				alt="img"><span><svg xmlns="http://www.w3.org/2000/svg"
						aria-hidden="true" focusable="false" x="0px" y="0px"
						viewBox="0 0 100 100" width="15" height="15" class="icon outbound">
						<path fill="currentColor"
							d="M18.8,85.1h56l0,0c2.2,0,4-1.8,4-4v-32h-8v28h-48v-48h28v-8h-32l0,0c-2.2,0-4,1.8-4,4v56C14.8,83.3,16.6,85.1,18.8,85.1z"></path> <polygon
							fill="currentColor"
							points="45.7,48.7 51.3,54.3 77.2,28.5 77.2,37.2 85.2,37.2 85.2,14.9 62.8,14.9 62.8,22.9 71.5,22.9"></polygon></svg>
					<span class="sr-only">(opens new window)</span></span></a>
		</p>
		<br>
		<h3 id="시간복잡도">
			<a href="#시간복잡도" class="header-anchor">#</a> 시간복잡도
		</h3>
		<hr>
		<p>
			최악의 경우(역으로 정렬되어 있을 경우) Selection Sort와 마찬가지로,
			<code>(n-1) + (n-2) + .... + 2 + 1 =&gt; n(n-1)/2</code>
			즉, <strong>O(n^2)</strong> 이다.
		</p>
		<p>
			하지만, 모두 정렬이 되어있는 경우(Optimal)한 경우, 한번씩 밖에 비교를 안하므로 <strong>O(n)</strong>
			의 시간복잡도를 가지게 된다. 또한, 이미 정렬되어 있는 배열에 자료를 하나씩 삽입/제거하는 경우에는, 현실적으로 최고의
			정렬 알고리즘이 되는데, 탐색을 제외한 오버헤드가 매우 적기 때문이다.
		</p>
		<p>
			최선의 경우는 <strong>O(n)</strong> 의 시간복잡도를 갖고, 평균과 최악의 경우 <strong>O(n^2)</strong>
			의 시간복잡도를 갖게 된다.
		</p>
		<br>
		<h3 id="공간복잡도">
			<a href="#공간복잡도" class="header-anchor">#</a> 공간복잡도
		</h3>
		<hr>
		<p>
			주어진 배열 안에서 교환(swap)을 통해, 정렬이 수행되므로 <strong>O(n)</strong> 이다.
		</p>
		<br>
		<h3 id="장점">
			<a href="#장점" class="header-anchor">#</a> 장점
		</h3>
		<hr>
		<ul>
			<li><p>알고리즘이 단순하다.</p></li>
			<li><p>대부분의 원소가 이미 정렬되어 있는 경우, 매우 효율적일 수 있다.</p></li>
			<li><p>정렬하고자 하는 배열 안에서 교환하는 방식이므로, 다른 메모리 공간을 필요로 하지 않는다.
					=&gt; 제자리 정렬(in-place sorting)</p></li>
			<li><p>
					<strong>안정 정렬(Stable Sort)</strong> 이다.
				</p></li>
			<li><p>Selection Sort나 Bubble Sort과 같은 O(n^2) 알고리즘에 비교하여
					상대적으로 빠르다.</p></li>
		</ul>
		<br>
		<h3 id="단점">
			<a href="#단점" class="header-anchor">#</a> 단점
		</h3>
		<hr>
		<ul>
			<li><p>평균과 최악의 시간복잡도가 O(n^2)으로 비효율적이다.</p></li>
			<li><p>Bubble Sort와 Selection Sort와 마찬가지로, 배열의 길이가 길어질수록
					비효율적이다.</p></li>
		</ul>
		<br>
		<h3 id="conclusion">
			<a href="#conclusion" class="header-anchor">#</a> Conclusion
		</h3>
		<hr>
		<p>Selection Sort와 Insertion Sort는 k번째 반복 이후, 첫번째 k 요소가 정렬된 순서로
			온다는 점에서 유사하다. 하지만, Selection Sort는 k+1번째 요소를 찾기 위해 나머지 모든 요소들을 탐색하지만
			Insertion Sort는 k+1번째 요소를 배치하는 데 필요한 만큼의 요소만 탐색하기 때문에 훨씬 효율적으로 실행된다는
			차이가 있다.</p>
		<br>
		<h4 id="참고-자료">
			<a href="#참고-자료" class="header-anchor">#</a> [참고 자료]
		</h4>
		<ul>
			<li><a
				href="https://gmlwjd9405.github.io/2018/05/06/algorithm-insertion-sort.html"
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