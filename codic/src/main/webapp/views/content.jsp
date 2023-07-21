<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="../resources/style/reset.css" rel="stylesheet">
	<link href="../resources/style/content.css" rel="stylesheet">
	<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
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
						<a href="ContentViews?contentId=${r.content_id}">
							<div id="img-area">
								<img src="${r.file_path}"/>
							</div>
							<div id="text-area">
								<div id="content-title">
									<h3>${r.content_title}</h3>
									<div>
										<span>${r.category_name}</span>
										<c:choose>
											<c:when test="${fn:contains(sessionScope.favorite, r.content_id)}">
												<!-- 찬 스타 -->
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
			  										<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												</svg>
											</c:when>
											<c:otherwise>
												<!-- 빈 스타 -->
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
			  										<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
												</svg>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div>
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
