<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세보기</title>
</head>
<body>

	<%@ include file="../include/header.jsp" %>
	<div class="row">
	<div class="col-xs-1"><%@include file="../include/mainheader.jsp"%></div>
	<div class="col-xs-5">
	<section class="content">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">상세보기</h3>
			</div>
			
<div class="box-body">
	<div class="form-group">
		<label>제목</label>
		<input type="text" name="title"
		class="form-control" value="${board.title}"
		readonly="readonly" />
	</div>
	
	<div class="form-group">
		<label>내용</label>
		<textarea name="content" rows="5"
		readonly="readonly" class="form-control">${board.content}</textarea>
	</div>
				
	<div class="form-group">
		<label>작성자</label>
		<input type="text" 
		class="form-control" value="${board.nickname}"
		readonly="readonly" />
		</div>
	</div>
	
			<div class="box-footer">
	 <c:if test = "${user.id == board.id}"> 		
	<button class="btn btn-warning" id="updatebtn">수정</button>
		</c:if>
	 <c:if test = "${user.id == board.id || user.id == 'admin'}"> 	

		
	<button class="btn btn-danger" id="deletebtn">삭제</button>
	
	</c:if>
		
	<button class="btn btn-primary" id="listbtn">목록</button>
</div>
</div>
</section>
<form name="form1" role="form" method="post">
	<!-- 글 세부 조회에서는 "수정","삭제","목록가기" 등을 클릭함에 따라 현제 페이지에서 글번호를 보내주어야 할 경우가 있다.
		따라서, hidden 타입으로 숨겨놓되 전달시 같이 전송될 수 있도록 hidden타입의 value로 설정해 놓는다.
	 -->
	<input type='hidden' name='bno' value="${board.bno}">
	<input type="hidden" name="page" value="${criteria.page }" />
	<input type="hidden" name="perPageNum" value="${criteria.perPageNum }" />
	
	
</form>
</div>
</div>


	<script>
	
	//목록 버튼을 눌렀을 때 처리
	document.getElementById("listbtn").addEventListener("click", function(){
		/* formObj.attr("action", "/board/update");
		formObj.attr("method", "get");	
		formObj.submit(); */
		location.href="board?page=${criteria.page}&perPageNum=${criteria.perPageNum}";
	});
	
	<c:if test = "${user.id == board.id}">

		//수정 버튼을 눌렀을 때 처리
		document.getElementById("updatebtn").addEventListener("click", function(){
		
			location.href="update?bno=" + ${board.bno} +"&page=${criteria.page}&perPageNum=${criteria.perPageNum}";
		});
	</c:if>


	
</script>
<!-- 로그인 한 유저와 작성자가 동일한 경우 -->
<c:if test="${user.id == board.id || user.id == 'admin'}">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<div id="dialog-confirm" title="정말로 삭제?"  style="display: none">
		<p>삭제하시면 복구할 수 없음. 그래도 삭제?</p>
	</div>
	<script>
		//삭제 버튼을 눌렀을 때 처리 
		document.getElementById("deletebtn").addEventListener("click",function(){
			$("#dialog-confirm").dialog({
			      resizable: false,
			      height: "auto",
			      width: 400,
			      modal: true,
			      buttons: {
			        "삭제" : function() {
			          $(this).dialog("close");
			         /*  formObj.attr("action", "/board/delete");
			  			formObj.submit(); */
			           location.href="delete?bno=${board.bno}" +"&page=${criteria.page}&perPageNum=${criteria.perPageNum}";  
			        },
			        "취소" : function() {
			          $(this).dialog("close");
			        }
			      }
			    });
		});
	</script>

</c:if>
</body>
</html>