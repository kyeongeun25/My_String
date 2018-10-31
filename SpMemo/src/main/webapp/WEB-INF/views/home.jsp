<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>메모장</title>
<meta name="viewport" content="width=device-width,initial-scale-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="w3-container">
	<%@ include file="/WEB-INF/include/include-header.jspf" %>
	<section class="w3-topbar w3-bottombar w3-border-light-blue w3-panel">
		
		<c:choose>
			<c:when test="${BODY == 'LIST' }">
				<%@ include file="/WEB-INF/body/memo_list.jsp" %>
			</c:when>
			
			<c:when test="${BODY == 'LIST_MAP' }">
				<%@ include file="/WEB-INF/body/memo_list_map.jsp" %>
			</c:when>
			
			<c:when test="${BODY == 'WRITE' }">
				<%@ include file='/WEB-INF/body/memo_write.jsp' %>
			</c:when>
			<c:when test="${BODY == 'MEMO_VIEW' }">
				<h4>카테고리 : ${MEMO.memoCat }</h4>
				<h4>중요도 : ${MEMO.flag }</h4>
				<h4>날짜 : ${MEMO.date }</h4>
				<h4>제목 : ${MEMO.subject }</h4>
				<h4>메모내용 : ${MEMO.memoText }</h4>
				
			</c:when>
			<c:when test="${BODY == 'JOIN_FORM' }">
				<%@ include file="/WEB-INF/body/member_join.jsp" %>
			</c:when>
			
			<c:when test="${BODY == 'LOGIN_FORM' }">
				<%@ include file="/WEB-INF/body/member_login.jsp" %>
			</c:when>
			<c:otherwise>
				<h3>반갑습니다</h3>		
			</c:otherwise>
		</c:choose>
	</section>
	<%@ include file="/WEB-INF/include/include-footer.jspf" %>
</body>
</html>
