<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@include file="../include/header.jsp"%>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<body>
<div class="row">
	<div class="col-xs-1"><%@include file="../include/mainheader.jsp"%></div>

<div id="userdisp">		</div>
		
</div>
		<div id="dialog-confirm" title="정말로 삭제?"  style="display: none">
		<p>삭제하시면 복구할 수 없음. 그래도 삭제?</p>
	</div>
</body>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
<script>
getUser();
function getUser(){
	
	$.ajax({
		url:"../admin/usercontrol",
		/*   data:{"id":'${user.id}',
			 	"nickname":'${user.nickname}'}, 
	 		dataType:"json",    */
		success:function(data){
			
	
	disp = '';
	

	disp += "<div class='col-xs-3'> <div class='box-body'>";
	disp += "<table class='table table-bordered table-hover'> <tr>";
	disp += "<th width='20%'></th> <th width='20%'>아이디</th>";
	disp += "<th width='20%'>닉네임</th> </tr>";
	$(data).each(function(idx, user){
	disp += "<tr> <td>";
	disp += "<button type='submit' id='exit"+user.id+"' onclick='exit(this)'>삭제</button></td>";
	disp += "<td>"+user.id+"</td>	<td>&nbsp;"+user.nickname+"</td>";
	disp += "</tr>";
	});
	disp += "</table></div></div>"
		
	document.getElementById("userdisp").innerHTML = disp;
		}
	});
	
}
			

	
		

function exit(btn){
	//댓글 번호 가져오기
	id = btn.id;
	//댓글번호 만들기 - 앞의 3글자 제외한 부분
	exit = id.substr(4);
	//삭제를 위한 대화상자를 출력
	alert(id);
	alert(exit);
	$('#dialog-confirm').dialog({
		resizable:false,
		height:'auto',
		width:400,
		modal:true,
		buttons:{
			"삭제":function(){
				$(this).dialog("close");
				
				$.ajax({
					url:"../admin/userdelete",
					data:{"id": exit},
					dataType:"json",
					success:function(data){
						getUser();
					}
				});
				
			},
			"취소":function(){
				$(this).dialog("close");
				
			}
		}
	});
}
	
		
		
	
</script>
</html>