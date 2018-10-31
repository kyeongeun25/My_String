<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- uri에 있는 c라는 prefix로 시작되는 lib를 쓰겠다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<%@ include file="/WEB-INF/include/include-head.jspf" %>
</head>
<body class="w3-container w3-margin">
	<%@ include file="/WEB-INF/include/include-header.jspf" %>
	<section>
		<article>
			<c:choose>
				<c:when test="${ empty MEMBERS }">
					<h4>리스트가 없습니다.</h4>
				</c:when>
				<c:otherwise>
					<table class="w3-table w3-border" >
						<tr>
							<th>이름</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>이메일</th>
						</tr>
						<c:forEach items="${MEMBERS }" var="item"> 
							<tr>
								<td><a href="/form01/update.do?id=${item.id }">${item.username }</a></td>
								<td>${item.telno }</td>
								<td>${item.addr }</td>
								<td>${item.email }</td>
							</tr>
						</c:forEach>
					</table>
				</c:otherwise>
			</c:choose>
		</article>
	</section>
	<%@ include file="/WEB-INF/include/include-footer.jspf" %>
</body>
</html>