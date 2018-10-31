<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
$(function(){

	$(".memo_select").on("click", function(){
	
		var id = $(this).attr("data-id")
		//alert(id)
		
		$(location).attr("href","view.memo?id="+id)
		
	})
	
	
})

</script>

<c:choose>
	<c:when test="${empty MEMOS }">
		<h3>메모가 없습니다</h3>
	</c:when>
	<c:otherwise>
		<table class="w3-panel w3-table w3-striped w3-hoverable">
		
			<tr>
				<th>카테고리</th>
				<th>중요도</th>
				<th>날짜</th>
				<th>제목</th>
			</tr>
			
			<!-- 리스트 본문 표시 -->
			<c:forEach items="${MEMOS }" var="item">
				<tr class=" memo_select" data-id="${item.id }">
					<td>${item.cValue}</td>
					<td>${item.fValue }</td>
					<td>${item.date }</td>
					<td>${item.subject }</td>					
				</tr>		
			</c:forEach>
		
		</table>
		
	</c:otherwise>		
</c:choose>

