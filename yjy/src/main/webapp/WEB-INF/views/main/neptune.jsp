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
	
 <div class="col-xs-3">
 		<div class="box-body">
<table class="table table-bordered">
<tr>
<td align="center" colspan="2" ><h2><u>해 왕 성(Neptune)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>48.083 km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>1.02 x 10^26kg</td>
</tr>

<tr>
<td align="right">태양까지의 평균거리:</td>
<td>4.500 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>16시간 06분</td>
</tr>

<tr>
<td align="right">태양 공전주기:</td>
<td>165년</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>11.2 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>-200℃</td>
</tr>

<tr>
<td colspan="2" align="center">
해왕성은 태양으로 부터 여덟 번째 행성이며 공식적으로 가장 먼 행성입니다.<br/>
다른 목성형 행성들 중 크기는 가장 작지만 밀도는 가장 큽니다.<br/>
해왕성의 표면중력은 목성 다음으로 강합니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>발견</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
해왕성은 관측보다 수학적 계산으로 먼저 그 존재가 예측된 첫 번째 행성입니다.<br/>
1846년 발견 이후로 해왕성은 지금까지 태양을 한 번 공전했습니다.
</td>
</tr>

<tr>
<td colspan="2" align="center">
<h3><u>내부구조</u></h3>
</td>
</tr>

<tr>
<td colspan="2" align="left"><h4>대기</h4></td>
</tr>

<tr>
<td align="center" colspan="2">
해왕성의 푸른 색은 천왕성보다도 선명한데, 메테인과 함께 대기를 구성하는 아직 밝혀지지 않은 화합물로 인해 색의 차이가 나타나는 것으로 생각됩니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>대기</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
해왕성은 막대한 양의 내부열을 생산해내는데, 이 과정은 아직 명확히 밝혀지지 않았습니다.<br/>
이 열로인해 대기가 태양계에서 가장 빠른 속도로 순환하고, 높은 고도에 거대한 천둥번개를 만드는 구름층이 형성됩니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>멘틀</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
해왕성의 유체 맨틀은 높은 전기 전도도를 가져서 해왕성의 자기장을 더욱 키워주는 역할을 합니다.
</td>
</tr>
</table>
</div>
</div>
 
  <div class='col-xs-3'> 
  <button class="btn btn-info" id="replyadd">댓글작성</button>
<!-- 댓글 작성 및 수정 대화상자 영역 -->
	<div class="box-body" style="display:none" id="replyform">
	<input type="hidden" name="rtype" value="neptune" id="rtype"/>
	
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

<div id="replydisp">	</div>
</div>
</div>
</body>
<%@include file="../include/replyin.jsp"%>
</html>