<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-head.jspf" %>

</head>
<body class="w3-container w3-margin">
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<p>이름 : ${MEMBER.username }
<p>주소 : ${MEMBER.addr }
<p>전화번호 : ${MEMBER.telno }
<p>이메일 : ${MEMBER.email }
<%@ include file="/WEB-INF/include/include-footer.jspf" %>

</body>
</html>