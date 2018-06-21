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
<td align="center" colspan="2" ><h2><u>지 구(Earth)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>12.756 km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>6 x 10^24kg</td>
</tr>

<tr>
<td align="right">태양까지의 평균거리:</td>
<td>150 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>23시간 56분</td>
</tr>

<tr>
<td align="right">태양 공전주기:</td>
<td>1년</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>9.8 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>15℃</td>
</tr>

<tr>
<td colspan="2" align="center">
우리가 살고있는 지구는 태양계에서 가장 밀도가 큽니다. 크기 또한 4개의 지구형 행성들중에서 가장 큽니다.
</tr>

<tr>
<td align="left" colspan="2"><h4>표면</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
지구표면의 71%는 소금물로 구성된 바다가 덮고 있고, 나머지 29%를 7개의 대륙이 차지합니다.<br/>
지구의 표면을 구성하는 여러 지질구조판들은 수백만년을 주기로 움직이고 있습니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>자전축</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
현재, 지구의 자전축은 23.4˚기울어져 있습니다.<br/>
기울어진 자전축으로 인해 1년 주기의 규칙적 계절 기후와 날씨변화가 나타납니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>자기장</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
액체상태의 외핵에 의해 만들어지는 지구의 자기장은 지구 바깥에 자기권을 형성합니다.<br/>
이 자기권은 태양풍으로부터 온 입자를 반사하여 방사선으로부터 지구를 보호합니다.
</td>
</tr>

<tr>
<td colspan="2" align="center">
<h3><u>내부구조</u></h3>
</td>
</tr>

<tr>
<td colspan="2" align="left"><h4>지각</h4></td>
</tr>

<tr>
<td align="center" colspan="2">
지구의 지각과 맨틀 상부는 암석권을 형성합니다.<br/>
암석권은 맨틀의 위를 떠다니는 크고작은 판들로 이루어져 있습니다. 이러한 판들의 움직임으로부터 지진이나 화산활동이 일어납니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>맨틀</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
지구 부피의 84%를 차지하는 맨틀은 암질의 지구 껍데기 층입니다. 맨틀의 최상부는 거의 고체에 가까워 비교적 단단합니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>외핵</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
외핵 내부의 온도차이로 인해 대류현상이 발생하는데, 액체상태의 금속들이 올라갔다가 식으면 다시 뜨거운 내핵으로 내려갑니다.
이러한 대류운동으로 인해 지구의 자기권이 형성됩니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>내핵</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
내핵의 온도는 거의 태양의 표면온도와 맞먹을 것으로 생각되지만, 엄청난 압력으로 인해 액체가 아닌 고체상태로 존재할 것입니다.
</td>
</tr>
</table>
</div>
</div>
 
  <div class='col-xs-3'> 
  <button class="btn btn-info" id="replyadd">댓글작성</button>
<!-- 댓글 작성 및 수정 대화상자 영역 -->
	<div class="box-body" style="display:none" id="replyform">
	<input type="hidden" name="rtype" value="earth" id="rtype"/>
	
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