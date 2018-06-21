<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../include/header.jsp"%>

<link
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<title>Insert title here</title>
<style type="text/css">
			body{ background-color:black;} 
		</style> 
</head>

<body>
<!-- <img src="/yjy/resources/img/main1.jpg" width="1900" height="730"> -->
<div class="row">
  <div class="col-md-1"><%@include file="../include/mainheader.jsp"%></div>
  <div class="col-md-9">

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
  
    <div class="item active">
      <img src="/yjy/resources/img/main.jpg" height="100%" width="100%">
      <div class="carousel-caption">
	<!-- 사진 아래 글씨 -->
      </div>
      
    </div>
    <div class="item">
      <img src="/yjy/resources/img/main1.jpg" width="100%" height="100%">
      <div class="carousel-caption">
      </div>
    </div>
    
        <div class="item">
      <img src="/yjy/resources/img/main2.jpg" width="100%" height="100%">
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
  
</div>
</div>
</body>
<script>

</script>
</html>