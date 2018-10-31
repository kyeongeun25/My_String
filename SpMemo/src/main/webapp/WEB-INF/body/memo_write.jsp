<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(function(){

	$("#btnSave").on("click", function(){
		if(confirm("저장할까요")){
			$("form").submit()	
		}
		
	})
	
	$("#btnDelete").on("click", function(){
		
		var subject = $("#subject").val()
		var id = $("#id").val()
		
		if(confirm(subject + "\n" + "메모를 정말 삭제할까요?")){
			$(location).attr('href',"/spmemo01/delete.memo?id=" + id )
		}
	})
	
})


</script>

<form action="/spmemo01/write_ok.memo" method="POST">
	<input type="hidden" name="id" id="id"  value=<c:out value="${MEMO.id }" default="0"/>>

	<label class="w3-container"><b class="w3-text-blue">카테고리</b>
		<select name="memoCat" class="w3-input w3-border">
			<option 
				<c:if test="${MEMO.memoCat == 'CAT_THINK'}">selected</c:if>
				value="CAT_THINK">오늘의 생각</option>
			<option 
				<c:if test="${MEMO.memoCat == 'CAT_WORK'}">selected</c:if>
				value="CAT_WORK">오늘의 할일</option>
			<option 
				<c:if test="${MEMO.memoCat == 'CAT_PROMISE'}">selected</c:if>
				value="CAT_POMISE">약속</option>
			<option 
				<c:if test="${MEMO.memoCat == 'CAT_VISIT'}">selected</c:if>
				value="CAT_VISIT">방문할곳</option>
			<option 
				<c:if test="${MEMO.memoCat == 'CAT_ETC'}">selected</c:if>
				value="CAT_ETC">기타</option>			
		</select>		
	</label>
	
	
	<label class="w3-container"><b class="w3-text-blue">중요도</b>
		<div class="w3-container w3-border w3-padding" >		
			<label>
				<input 
					<c:if test="${MEMO.flag == 'FLAG_TOP'}">checked</c:if>
					type="radio" name="flag" value="FLAG_TOP" class="w3-margin-right">중요
			</label>
			
			<label>
				<input 
					<c:if test="${MEMO.flag == 'FLAG_MID'}">checked</c:if>
					type="radio" name="flag" value="FLAG_MID" class="w3-margin-right w3-margin-left">보통
			</label>
		
			<label>
				<input 
					<c:if test="${MEMO.flag == 'FLAG_LOW'}">checked</c:if>
					type="radio" name="flag" value="FLAG_LOW" class="w3-margin-right w3-margin-left">일반
			</label>
		 </div>
	 </label>
	 
	 <div class="w3-margin-top">
	<label calss="w3-container"><b class="w3-text-blue">작성일자</b>
		<input value="${MEMO.date }"
				type="date" name="date" id="date" class="w3-input w3-container w3-border ">
	</label>
	</div>
	<div class="w3-margin-top">
	<label calss="w3-container"><b class="w3-text-blue">메모제목</b>
		<input 
			value="${MEMO.subject }"
			type="text" name="subject" id="subject" class="w3-input w3-border ">
	</label>
	</div>
	<div class="w3-margin-top">
	<label calss="w3-container"><b class="w3-text-blue">메모</b>
		<textarea rows="5"  name="memoText" id="memoText" class="w3-input w3-border ">${MEMO.memoText }</textarea>
	</label>
	</div>
	<button type="button" id="btnSave" class="w3-button w3-blue w3-margin-top">저장</button>
	<c:if test="${ MEMO.id > 0 }">
		<button type="button" id="btnDelete" class="w3-button w3-red w3-margin-top">삭제</button>
	</c:if>
	
	
</form>