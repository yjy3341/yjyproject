<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@include file="../include/header.jsp" %>
<body>
<div class="row">
<div class="col-xs-1"><%@include file="../include/mainheader.jsp"%></div>
<div class="col-xs-5">

	<div class="box-header">
		<h3 class="box-title">사진 올리기</h3>
	</div>
	<form id="registerform" enctype="multipart/form-data" method="post">

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
		
		<div class="from-group">
			<input type="submit" value="사진올리기">
			<a href="../main/image" class="btn btn-default">뒤로가기</a>
		</div>
		
		</form>


</div>
</div>
</body>
<script
src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js">
</script>

<script>
//이미지를 보여질 공간
var img = document.getElementById("img");
//선택한 이미지파일 
var image = document.getElementById("image");

//선택한 이미지파일을 저장할 변수
var filename = "";

//image 에서 선택이 변경되었을 때 호출되는 함수만들기
image.addEventListener('change', function(){
	readURL(this);	
});

function readURL(input){
	//선택한 파일명
	filename = input.files[0].name;
	//그림 파일인지 확인
	//마지막 3글자 가져오기
	var ext = filename.substr(filename.length-3, filename.length);

	if(ext.toLowerCase() != 'gif' && ext.toLowerCase() != 'jpg' 
			&& ext.toLowerCase() != 'png'){
		alert('그림 파일을 선택하세요');
		return;
	}
	
	//그림 파일로 내용 읽기
	var reader = new FileReader();
	reader.readAsDataURL(input.files[0]);
	//그림파일의 내용을 읽으면 출력
	reader.onload = function(e){
		img.src = e.target.result;
	}
};
</script>
</html>