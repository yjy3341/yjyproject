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
 <div class="col-md-3">
 		<div class="box-body">
<table class="table table-bordered">
<tr>
<td align="center" colspan="2" ><h2><u>태 양(Sun)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>1.39 M km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>1.99 x 10^30kg</td>
</tr>

<tr>
<td align="right">은하 중심까지의 거리:</td>
<td>30 900 000 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>25일</td>
</tr>

<tr>
<td align="right">은하 공전주기:</td>
<td>22 M 년</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>274 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>5 505℃</td>
</tr>

<tr>
<td colspan="2" align="center">"해"라고도 불리는 태양은 태양계의 중심에 위치해 있습니다.<br/> 태양은 태양계 전체질량의 99.86%를 차지하고 있습니다.</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>구성</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
수소와 헬륨이 태양질량의 대략 ¾을 구성하고,<br/> 탄소, 철, 네온, 산소와 같은 무거운 원소들은 그 양이 아주 적어
태양질량의 1.69% 만을 차지합니다.
</td>
</tr>

<tr>
<td colspan="2" align="left"><h4>거리</h4></td>
</tr>

<tr>
<td align="center" colspan="2">
태양에서 지구까지의 평균거리는 대략 1억 4960만 km(1 AU)입니다.<br/>
태양에서 지구까지 빛이 도달하는데는 약 8분 19초가 걸립니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>우리은하에서의 태양</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
한때 태양은 다른 항성에 비해 상대적으로 등한시되었지만,<br/>
현재는 우리은하를 구성하는 다른 85%의 항성들보다도 밝은 것으로 여겨집니다.<br/>
태양은 우리은하의 중심으로부터 반지름의 지점에 위치합니다.
</td>
</tr>

<tr>
<td colspan="2" align="center">
<h3><u>내부구조</u></h3>
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>광구</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
광구는 태양 가장 바깥의 얇은 층입니다.<br/>
광구 아래로는 가시광에 대해 불투명해집니다. 이는 지구상의 공기보다 약간 더 불투명합니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>대류층</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
열기둥이 뜨거운 물질을 태양의 표면으로 운반합니다.물질이 식으면 다시 복사층으로 내려갑니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>복사층</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
복사층은 열복사를 통해 핵의 열을 바깥으로 전달합니다.<br/>
내부물질은 위층으로 올라갈수록 냉각되고, 밀도는 복사층 하단에서 최상층으로 올라가면서 백분의 일로 떨어집니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>핵</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
태양반지름의 24%지점까지 태양이 내는 에너지의 99%가 생산됩니다.</td>
</tr>
</table>
</div>
</div>


  <div class="col-md-3"> 
  <button class="btn btn-info" id="replyadd">댓글작성</button>
<!-- 댓글 작성 및 수정 대화상자 영역 -->
	<div class="box-body" style="display:none" id="replyform">
	<input type="hidden" name="rtype" value="sun" id="rtype"/>
	
		<label for="nickname">작성자</label>
		<input class="form-control" type="text" id="nickname"
		value="${user.nickname}" readonly="readonly" />
		<label for="replytext">댓글내용</label>
		<input type="text" class="form-control" id="replytext"
		placeholder="댓글 내용을 작성하세요!"/>
	</div>
	
	
	<div id="dialog-confirm" title="정말로 삭제?" style="display: none">
			<p>삭제하시면 복구할 수 없습니다. 그래도 삭제하실 건가요?</p>
		</div>
<!-- <button class="btn btn-default" id="replylist">댓글읽기</button> -->

<div id="replydisp">	</div>
</div>
	</div>
</body>
<%@include file="../include/replyin.jsp" %>
</html>