<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>

$(function(){

	$("#btnLogin").on("click", function(){
		
		var username = $("#username").val()
		var password = $("#password").val()
		
		if(username ==""){
			$("#emailError").html("<b>* 이메일을 입력하세요</b>")
			$("#username").focus()
			return false
		}
		
		if(password == ""){
			$("#passError").html("<b>* 비밀번호를 입력하세요</b>")
			$("#password").focus()
			return false
		}
		
		$('form').submit()
		
	})
	
})


</script>

<article class="w3-container kwon-container w3-topbar w3-leftbar w3-rightbar w3-bottombar w3-border-light-blue">

	<form action="login_ok.member" method="POST" class="w3-margin">
	
		<c:if test="${MSG ne null }">
			<h3 class="w3-panel w3-light-blue w3-text-sand w3-center"><b>${MSG}</b></h3>
		</c:if>
	
		<label class="w3-container w3-text-blue"><b>이메일</b>
			<input type="email" class="w3-input w3-border" placeholder="이메일을 입력하세요" id="username" name="username">
			<p id="emailError" class="w3-text-red"></p>
		</label>
		
		<label
			class="w3-container w3-text-blue"><b>비밀번호</b>
			<input type="password" placeholder="비밀번호를 입력하세요" id="password" name="password" class="w3-input w3-border">
			<p id="passError" class="w3-text-red"></p>
		</label>
		
		<button type="button" id="btnLogin" class="w3-button w3-margin-top w3-block w3-large w3-sand">로그인</button>
		<button type="button" id="btnLogin" class="w3-button w3-margin-top w3-margin-bottom w3-large  w3-block w3-light-gray">회원가입</button>
		
	</form>

</article>