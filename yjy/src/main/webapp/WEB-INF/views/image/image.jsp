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
<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
<body>
<div class="row">
<div class="col-xs-1"><%@include file="../include/mainheader.jsp"%></div>
<div class="col-xs-5">
  <a class="btn btn-default" href="../image/imageupload" role="button">사진 올리기</a>

<div class="row">
<div id="imagedisp"> </div>


	</div>
		</div>
</div>

<!----------------------------------------------------------------->
<form id="registerform" enctype="multipart/form-data" method="post">
<div class="box-body" style="display:none" id="imageform">
	<input type="hidden" name="rtype" value="sun" id="rtype"/>
		<div class="form-group">
			<label>작성자:</label>
			<input type="text" name="nickname" id="nickname" value="${user.nickname}" class="form-control" readonly="readonly">
		</div>
		<div class="form-group">
			<label>이미지 제목:</label>
			<input type="text" id="imagetitle" name="imagetitle" class="form-control" placeholder="이지미 제목을 입력하세요">
		</div>
		<div class="form-group">
			<label for="exampleInputFile">이미지파일</label>
			<input type="file" id="image" name="image">
		</div>
		<div class="from-group">
			<img id="img" width="150" height="150"/>
		</div>
	</div>
</form>

		<div id="dialog-confirm" title="정말로 삭제?" style="display: none">
			<p>삭제하시면 복구할 수 없습니다. 그래도 삭제하실 건가요?</p>
		</div>
</body>
<script>
id = "${user.id}";
getImage();

function getImage(){
	$.ajax({
		url:"../image/imagelist",
		success:function(data){
			disp ='';
			
		$(data).each(function(idx, item){
			disp +="<div class='col-xs-6 col-md-3' style='wieth:150px;height:300px'>";
			disp +=" <div class='caption' style='height:150px;width:150px'>";
			disp += "<img src='${pageContext.request.contextPath}/userimage/"+item.image+"' class='img-thumbnail'>";
			disp += "</div>";
			disp += "<div class='caption'>";
			disp += "<h3>"+item.imagetitle+"</h3>";
			disp += "<p>작성자: "+item.nickname+"</p>";
			disp += "</div>";
			
			
			  if(id == item.id || id == 'admin'){
			disp += "<button type='submit' class='btn btn-danger'";
			disp += " id='del" + item.ino + "' ";
			disp += "style='float:right' ";
			disp += "onclick = 'del(this)'>댓글삭제</button>";
			disp += "</div>";
			 } 
		});
		document.getElementById("imagedisp").innerHTML = disp;
	}
	});
}
/* 
document.getElementById("imageadd").addEventListener(
		"click", function(){
		$('#imageform').dialog({
			resizable:false,
			height:'auto',
			width:400,
			model:true,
			buttons:{
				"저장":function(){
					$(this).dialog("close");
					//입력한 내용 가져오기
					$.ajax({
						url:"../image/imageupload",
						data:{
							"nickname":'${user.nickname}',
							"imagetitle": imagetitle,
							"image" : image,
							"img" : img
						},
						dataType:"json",
						success:function(data){
							//댓글을 출력하는 함수를 호출
							getReply();
						}
					});
					
				},
				"취소":function(){
					$(this).dialog("close");
				}
			}
		});
	}); */
//댓글 삭제를 눌렀을 때 호출될 함수
function del(btn){
	
	//댓글 번호 가져오기
	id = btn.id;
	//댓글번호 만들기 - 앞의 3글자 제외한 부분
	ino = id.substr(3);
	alert(ino);
	//삭제를 위한 대화상자를 출력
	$('#dialog-confirm').dialog({
		resizable:false,
		height:'auto',
		width:400,
		modal:true,
		buttons:{
			"삭제":function(){
				$(this).dialog("close");
				
				$.ajax({
					url:"../image/imagedelete",
					data:{"ino": ino},
					dataType:"json",
					success:function(data){
						getImage();
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