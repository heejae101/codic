<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Content</title>
</head>
<body>
	<h1>Content</h1>
	<c:choose>
		<c:when test="${empty result}">
			<p>찾는 주제의 지식이 없어요..</p>
			<p>이런 지식은 어때요?</p>
		</c:when>
		<c:otherwise>
			<!--  begin="1" end="3"  은 1부터 3 까지만 출력 (반복 횟수 지정이라고 생각하면 됨)-->
			<!--  줄바꿈은 css를 통해서 하는것이 베스트이다.  -->
			<c:forEach var="r" items="${result}">
				<a href="/">
					<section>
						<img src="${r.file_path}"/>
					</section>
					<section>
						<h3>${r.content_title}</h3>
						<div>
							<span>${r.category_name}</span>
							<span>조회수 : ${r.content_views}</span>
						</div>
					</section>
				</a>
			</c:forEach>
			<!--  임시 변수  -->
			<c:set var="page" value="${(param.page == null)?1:param.page}" />
			<c:set var="startNum" value="${page-(page-1)%5}" />
			<c:set var="lastNum" value="20"/>
			<div class="tag">
				<c:if test="${param.page > 5}">
					<a href="?&text=${param.text}&page=${(startNum-5 < 0)?0:startNum-5}" class="btn btn-next">이전</a>
				</c:if>
				<c:forEach var="i" begin="0" end="4">
					<li><a class="-text-" href="?&text=${param.text}&page=${startNum+i}">${startNum+i}</a></li>
				</c:forEach>
				<br>
				<c:if test="${startNum+5<lastNum}">
					<a href="?&text=${param.text}&page=${startNum+5}" class="btn btn-next">다음</a>
				</c:if>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>
