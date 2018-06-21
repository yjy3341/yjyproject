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
<td align="center" colspan="2" ><h2><u>수 성(Mercury)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>4.879 km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>3.3 x 10^23kg</td>
</tr>

<tr>
<td align="right">태양까지의 평균거리:</td>
<td>58 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>59일</td>
</tr>

<tr>
<td align="right">태양 공전주기:</td>
<td>88일</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>3.7 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>167℃</td>
</tr>

<tr>
<td align="right">온도 - 낮:</td>
<td>473℃</td>
</tr>

<tr>
<td align="right">온도 - 밤:</td>
<td>-183℃</td>
</tr>

<tr>
<td colspan="2" align="center">가장 안쪽 궤도를 도는 수성은 태양계에서 가장 작은 행성입니다.<br/>
열을 유지할 대기가 없어서 수성의 표면에서는 다른 행성들에 비해 극심한 온도변화가 일어납니다.</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>관측</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
지구에서는 아침이나 저녁에 관측이 가능하지만 태양과의 가까운 거리로 인해 찾기가 까다롭습니다.<br/>
수성은 봄의 일몰시기나 가을의 일출시기에 관측할 수 있습니다.
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
표면의 어두운 평원(바다)이나 크레이터들을 봤을때 수성은 달과 비슷한 모습을 하고 있습니다.<br/>
표면의 모습에서 주목할 만한 점은 수 많은 좁은 협곡드인데, 지각이 식은 후 핵과 맨틀이 수축하면서 형성되었을 것입니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>핵</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
높은 밀도로 미루어 볼 때, 수성은 철성분이 풍부한 핵을 가지고 있습니다.<br/>
핵의 구성성분 중 철의 비율이 태양계의 어느 행성보다도 큽니다.
</td>
</tr>

</table>
</div>
</div>
 
  <div class='col-xs-3'> 
  <button class="btn btn-info" id="replyadd">댓글작성</button>
<!-- 댓글 작성 및 수정 대화상자 영역 -->
	<div class="box-body" style="display:none" id="replyform">
	<input type="hidden" name="rtype" value="mercury" id="rtype"/>
	
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