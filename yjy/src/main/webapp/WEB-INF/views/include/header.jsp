<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL 의 core 기능을 사용하기 위한 설정 : if, forEach, set 사용 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- 현재 기기의 너비에 맞추어서 출력을 하고
기본 크기는 1배 최대 크기도 1배 확대축소 못하게 하는 설정
모바일 웹 애플리케이션에서 주로 이용 -->
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>

<!-- 부트스트랩 스타일시트 파일 링크 설정
contextPath는 절대 경로를 만들기 위해서 추가 -->	
<link
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- IE 9 이전 버전에서 HTML5의 semantic 태그를
사용하기 위한 설정 -->	
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.comrespond/1.4.2respond.min.js"></script>
    <![endif]-->

</head>
<!-- jQuery 설정 -->
<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
<body> <!-- class="skin-blue sidebar-mini" -->
	<!-- <div class="wrapper">
		<header class="main-header" >
			<div class="page-header" align ="center">
				<h1>태양계</h1>
			</div>
		</header>
	</div> --><!-- <nav class="navbar navbar-default navbar-static-top"> -->
	<div class="row">
	 <div class="col-xs-2">
				 <div>
					${user.nickname}님</div>
				 
			
				 
				
					<a href="${pageContext.request.contextPath}/home">
				<button type="button" class="btn btn-default btn-lg">
  				<span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 로그아웃
				</button>
				</a>
				
				
				<c:if test="${user.id == 'admin'}">
					<a href="${pageContext.request.contextPath}/admin/usercontrollist">
				<button type="button" class="btn btn-default btn-lg">
  				회원관리
				</button>
				</a>
				
				</c:if>
				</div>
	<div class="col-xs-7">
		<!-- <aside class="main-sidebar"> -->
	<!-- 	<section class="sidebar"> -->
<!-- 	<nav class="navbar navbar-inverse"> -->
			<ul class="nav nav-tabs nav-justified">
				<h2><a href="${pageContext.request.contextPath}/main/main"><p class="navbar-text">메인</p></a></h2>
				<h2><p class="navbar-text"><a href="${pageContext.request.contextPath}/board/board">자유게시판/공지사항</a></p></h2>
				<h2><p class="navbar-text"><a href="${pageContext.request.contextPath}/image/image">사진</a></p></h2>
				<h2><p class="navbar-text"><a href="${pageContext.request.contextPath}/main/chat">실시간토론</a></p></h2>
			</ul>
		<!-- 	</nav> -->
	<!-- 	</section> -->
	<!-- </aside> -->
	</div>
</div>

<!-- </nav> -->
	</body>
	
	
	
	