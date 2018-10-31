<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(function(){
	
	
	
	$("#btnJoin").on("click",function(){
				
		$("#EmailError").text("")
		$("#PassError").text("")
		$("#re_PassError").text("")
	
		var username = $("#username").val();
		var password = $("#password").val();
		var re_password = $("#re_password").val();
		
		// email체크
		var emailCheck = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/
		if(!emailCheck.test(username)){
			$("#EmailError").html("<b>* 이메일의 형식이 맞지 않습니다</b>")

			$("#username").focus()
			return false
		}
		
		var passMsg = "PASS_OK"
		var num = password.search( /[0-9]/g )		// 숫자가 있냐
		var eng = password.search( /[a-z]/ig )		// 영문자가 있냐
		var spe = password.search( /[`~!@#$^&*|\\\'\";:\/?]/ig) // 특수문자가 있냐
		
		
		if(password.length<8){
			passMsg = "<b>* 비밀번호는 8자 이상으로 입력하세요. </b>"
		}else if(num <0){
			passMsg = "<b>* 숫자를 1개 이상 포함해야 합니다. </b>"
		}else if(eng <0){
			passMsg = "<b>* 영문자를 1개 이상 포함해야 합니다. </b>"
		}else if(spe <0){
			passMsg = "<b>* 특수문자를 1개 이상 포함해야 합니다. </b>"
		}
	
		if(passMsg != "PASS_OK"){
			$("#PassError").html(passMsg)
			$("#password").focus()
			return false
			
		}
		
		if(password != re_password) {

			$("#re_PassError").html("<b>* 비밀번호가 일치하지 않습니다. 다시 입력해주세요.</b>")
			$("#password").val("")
			$("#re_password").val("")
			
			$("#password").focus()
			return false;
		}
		
		$('form').submit()
		
	})
	
	
})
</script>



<article class="w3-container kwon-container w3-topbar w3-leftbar w3-rightbar w3-bottombar w3-border-light-blue">
	
	<form action="join_ok.member" method="POST">
	
		<label class="w3-container w3-text-blue"><b>이메일</b>
			<input class="w3-input w3-border" 
				placeholder="이메일을 입력하세요"
				type="email" id="username" name="username">
			<p id="EmailError" class="w3-text-red"></p>
		</label>
		
		<label class="w3-container w3-text-blue"><b>비밀번호</b>
			<input class="w3-input w3-border"
				placeholder="비밀번호를 입력하세요" 
				type="password" id="password" name="password">
			<p id="PassError" class="w3-text-red"></p>
		</label>
		
		
		<label class="w3-container w3-text-blue"><b>비밀번호확인</b>
			<input class="w3-input w3-border" 
				placeholder="비밀번호를 한번 더 입력하세요"
				type="password" id="re_password" name="re_password">
			<p id="re_PassError" class="w3-text-red"></p>
		</label>
		
		<button type="button" class="w3-button w3-large w3-block w3-sand" id="btnJoin">회원가입</button>

	</form>

</article>