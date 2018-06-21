<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- method 와 enctype은 파일을 업로드하기 위해서 설정
	파일이 업로드되는 폼은 반드시 method는 post 로
	enctype은 multipart/form-data로 설정
	onsubmit에 함수를 연결한 것은 폼의 데이터를 전송할 때
	유효성 검사를 하기 위해서 입니다. -->
	<div class="row">
		  <div class='col-xs-6 col-md-4'> </div>
	  <div class='col-xs-6 col-md-4'> 
	<form id="registerform" method="post" onsubmit="return check()">
		<div class="form-group">
			<label for="exampleInputEmail1">아이디: </label> <input type="text"
				onblur="confirmId()" class="form-control" id="id" name="id"
				placeholder="아이디를 입력하세요">
		</div>
		<!-- 메시지 출력 영역 -->
		<div id="iddiv"></div>
		<div class="form-group">
			<label for="exampleInputPassword1">비밀번호: </label> 
			<input type="password" class="form-control" id="pw" name="pw"
				placeholder="비밀번호를 입력하세요">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">비밀번호 확인: </label> 
			<input type="password" class="form-control" id="pwconfirm"
				placeholder="비밀번호를 입력하세요">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">이름:</label> 
			<input type="text" class="form-control" id="name" name="name"
				placeholder="이름을 입력하세요">
		</div>		
		<div class="form-group">
			<label for="exampleInputPassword1">닉네임:</label> 
			<input type="text" class="form-control" id="nickname" name="nickname"
				placeholder="닉네임을 입력하세요">
		</div>


		<div class="form-group">
			<input type="submit" value="회원가입" />
		</div>
		<div class="form-group">
			<a href="../" class="btn btn-default">뒤로가기</a>
		</div>

	</form>
	</div>
	</div>
</body>
<script
	src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js">
	
</script>
<script>
	//id 중복 검사 통과 여부를 저장할 변수
	var idcheck = false;
	
	//id 중복체크 위한 함수
	function confirmId() {
		//id에 입력된 값 가져오기 
		val = document.getElementById("id").value;
		//메시지 출력 영역 가져오기
		iddiv = document.getElementById("iddiv");
		idnull = false
		$.ajax({
			url : 'idcheck',
			data : {'id' : val},
			dataType : 'json',
			success : function(data) {				
				if (data.result == true) {
					iddiv.innerHTML = "사용 가능한 아이디";
					iddiv.style.color = 'blue';
					idcheck = true;
				}
				//id중복
				else  {
					iddiv.innerHTML = "사용 불가능한 아이디";
					iddiv.style.color = 'red';
					idcheck = false;
				}
			}
		});
	}
	
	
	function check() {
		//idcheck 의 값이 false 이면 서버로 전송하지 않도록
		if (idcheck == false) {
			document.getElementById("iddiv").innerHTML = "id 를 입력해야 합니다.";
			document.getElementById("iddiv").style.color = 'red';
			document.getElementById("id").focus();
			return false;
		}
		
		var id = document.getElementById("id");
		if (id.value.indexOf(" ") >= 0) {
            alert("아이디에 공백을 사용할 수 없습니다.")
           id.focus();
            return false;
        }
		
		var name = document.getElementById("name");
		if(name.value == ""){
			alert("이름을 입력하셔야 합니다.")
			name.focus();
			return false;
		}
		
		var nickname = document.getElementById("nickname");
		if(nickname.value == ""){
			alert("닉네임을 입력하셔야 합니다.")
			nickname.focus();
			return false;
		}
		
		//비밀번호에 입력한 값과 비밀번호 확인에 입력한 값이
		//일치하지 않으면 서버로 전송하지 않도록
		var pw = document.getElementById("pw");
		var pwconfirm = document.getElementById("pwconfirm");
		if (pw.value != pwconfirm.value) {
			alert("두 개의 비밀번호는 일치해야 합니다.");
			pw.focus();
			return false;
		}

		if (pw.value == ""){
			alert("비밀번호를 입력하셔야 합니다.");
			pw.focus();
			return false;
		}
		//비밀번호는 숫자, 영문자, 특수문자 1개이상으로 8자 이상
		//만들어졌는지 검사
		//정규식 이용 - 숫자, 영문자, 특수문자
		var p1 = /[0-9]/;
		var p2 = /[a-zA-Z]/;
		var p3 = /[~!@#$%^&*()]/;
		if (!p1.test(pw.value) || !p2.test(pw.value) || !p3.test(pw.value)
				|| pw.value.length < 8) {
			alert("비밀번호는 8자이상 숫자, 영문자, 특수문자를 포함해야 합니다.");
			pw.focus();
			return false;
		}
	}
</script>
</html>