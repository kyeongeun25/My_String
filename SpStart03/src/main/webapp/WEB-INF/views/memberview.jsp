<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Member 정보</h3>
<h5>이름 : ${MEMBER.username}</h5>
<h5>주소 : ${MEMBER.addr}</h5>
<h5>전화번호 : ${MEMBER.telno}</h5>
<h5>나이 : ${MEMBER.age}</h5>
<p><button type=submit>전송</button>
</body>
</html>