<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
			body{
				background-image: url(/yjy/resources/img/qq.jpg) ;
}
		</style>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
	
<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="login-box well">
					<form accept-charset="UTF-8" role="form" method="post"
						action="login">
						<legend>로그인</legend>
						<div style='color: red'>${msg}</div>
						<div class="form-group">
							<label for="username-email">아이디</label> <input type="text"
								name="id" id="id" required="required"
								placeholder="아이디를 입력하세요" class="form-control" />
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label> <input type="password"
								name="pw" id="pw" placeholder="비밀번호를 입력하세요" class="form-control" required="required"/>
						</div>
						<div class="form-group">
							<input type="submit"
								class="btn btn-primary btn-login-submit btn-block m-t-md"
								value="로그인" />
						</div>

						<div class="form-group">
							<a href="user/register" class="btn btn-warning btn-block m-t-md">회원가입</a>
						</div>

					</form>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>

</head>
<body>
 

