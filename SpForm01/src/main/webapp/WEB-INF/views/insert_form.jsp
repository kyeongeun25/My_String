<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<%@ include file="/WEB-INF/include/include-head.jspf" %>
	
	<script>
		// $("btnSave".click(function());
	$(function(){
		
		$("#btnDelete").on("click", function(){
			if(confirm("정말 삭제할까요")){
				$(location).attr("href","/form01/delete.do?id=${MEMBER.id}")
			}
		})
		
		$("#btnSave").on("click", function(){
			// alert("저장 버튼 클릭")
			var userName = $("#username").val()
			var addr = $("#addr").val()
			var telno = $("#telno").val()
			var email = $("#email").val()
			
			// 이름을 입력하지 않았으면
			if(userName == ""){
				alert("이름을 입력하세요")
				$("#username").focus()
				return false
			}
			if(addr == ""){
				alert("주소를 입력하세요")
				$("#addr").focus()
				return false
			}
			
			var emailTest = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			if(email == ""){
				alert("이메일을 입력하세요")
				$("#email").focus()
				return false
			}
			
			if(!emailTest.test(email)){
				alert("이메일이 형식에 맞지 않습니다.")
				$("#email").focus()
				return false
			}
			
			// 전송을 실행하라
			$("form").submit()
				
		})
	})
	</script>
</head>
<body class="w3-container w3-margin">
	<%@ include file="/WEB-INF/include/include-header.jspf" %>
	<section class="w3-panel w3-padding-16">
		<form action="/form01/insert_ok.do" method="post">
			<label class="w3-label">이름</label>
			<input type="hidden" name="id" value=<c:out value='${MEMBER.id }' default='0' />>
			<input placeholder="이름을 입력하세요." value="${MEMBER.username }" 
				   class="w3-input w3-border" type="text" name="username" id="username" >
			
			<label>주소</label>
			<input placeholder="주소를 입력하세요" value="${MEMBER.addr }" class="w3-input w3-border" 
				   type="text" name="addr" id="addr">
			
			<label>전화번호</label>
			<input placeholder="전화번호를 입력하세요" value="${MEMBER.telno }" class="w3-input w3-border" 
			       type="tel" name="telno" id="telno">

			<label>이메일</label>
			<input placeholder="이메일 입력하세요" value="${MEMBER.email }" class="w3-input w3-border" 
				   type="email" name="email" id="email">
			
			<Button class="w3-button w3-blue w3-input" type="button" id="btnSave">저장</Button>
			
			<c:if test="${MEMBER.id>0}">
				<Button class="w3-button w3-red w3-input" type="button" id="btnDelete">삭제</Button>
			</c:if>
			
		</form>
	</section>
	<%@ include file="/WEB-INF/include/include-footer.jspf" %>
</body>
</html>
