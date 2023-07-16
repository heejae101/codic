<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="../resources/style/reset.css" rel="stylesheet">
	<link href="../resources/style/content.css" rel="stylesheet">
<title>Content</title>
</head>
<body>
	<jsp:include page="/header"></jsp:include>
	<jsp:include page="/menuBar"></jsp:include>
	<div class="content">
	<h1>Content</h1>
	<c:choose>
		<c:when test="${empty result}">
			<div id="data-notfund">
				<p>찾는 주제의 지식이 없어요..</p>			
				<p>이런 지식은 어때요?</p>
			</div>
		</c:when>
		<c:otherwise>
			<c:set var="page" value="${(param.page == null || empty(param.page))?1:param.page}" />
			<c:set var="itemsPerPage" value="6" />
			<c:set var="startIndex" value="${(page - 1) * itemsPerPage}" />
			<c:set var="endIndex" value="${startIndex + itemsPerPage}" />
			<!--  줄바꿈은 css를 통해서 하는것이 베스트이다.  -->
			<div class="content-area">
				<c:forEach var="r" items="${result}" varStatus="loop">
					<c:if test="${loop.index >= startIndex && loop.index < endIndex}">
						<a href="/views/definitionHtml.jsp">
							<div id="img-area">
								<img src="${r.file_path}"/>
							</div>
							<div id="text-area">
								<h3>${r.content_title}</h3>
								<div>
									<span>${r.category_name}</span>
									<span>조회수 : ${r.content_views}</span>
								</div>
							</div>
						</a>
					</c:if>
				</c:forEach>
			</div>
			<!--  임시 변수  -->
			<c:set var="totalItems" value="${result.size()}" />
			<c:set var="totalPages" value="${(totalItems/itemsPerPage)}" />
			<div class="tag">
				<ul>
				<%-- <c:if test="${page > 1}">
					<a href="?&text=${param.text}&page=${page - 1}" class="btn btn-next">이전</a>
				</c:if> --%>
				<c:forEach var="i" begin="1" end="${totalPages}">
					<li>
						<c:if test="${i==page}">
							<b>${i}</b>
						</c:if>
						<c:if test="${i != page}">
							<a class="-text-" href="?&text=${param.text}&page=${i}">${ i }</a>
						</c:if>
					</li>
				</c:forEach>
<%-- 				<c:if test="${page < totalPages}">
					<a href="?&text=${param.text}&page=${page + 1}" class="btn btn-next">다음</a>
				</c:if> --%>
				</ul>
			</div>
		</c:otherwise>
	</c:choose>
	</div>
	<jsp:include page="/footer"></jsp:include>
</body>
</html>
