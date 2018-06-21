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
<td align="center" colspan="2" ><h2><u>금 성(Venus)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>12.104 km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>4.9 x 10^24kg</td>
</tr>

<tr>
<td align="right">태양까지의 평균거리:</td>
<td>108 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>243일</td>
</tr>

<tr>
<td align="right">태양 공전주기:</td>
<td>225일</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>8.9 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>462℃</td>
</tr>

<tr>
<td colspan="2" align="center">
금성은 크기면에서나 내부구조면에서나 지구와 매우 비슷한 모습을 하고있지만 활화산으로 뒤덮인 표면과 고온고압의 대기는 금성을 태양계에서 가장 정착하기 어려운 곳으로 만듭니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>대기</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
먼지와 황산으로 이루어진 두꺼운 구름층은 대부분의 태양광을 우주밖으로 반사하는 반면, 이산화탄소는 태양의 복사열을 대기 안에 가두어
온실효과를 일으킵니다.<br/>
금성의 대기압은 지구의 92배에 달합니다.
</td>
</tr>


<tr>
<td colspan="2" align="left"><h4>관측</h4></td>
</tr>

<tr>
<td align="center" colspan="2">
금성은 밤하늘에서 달 다음으로 밝은 천체입니다. 아침이나 저녁에 관측됩니다.
</td>
</tr>

<tr>
<td colspan="2" align="center">
<h3><u>내부구조</u></h3>
</td>
</tr>

<tr>
<td colspan="2" align="center">
아직까지 금성의 내부구조에서 밝혀진 사실은 많지 않습니다. 하지만 금성이 지구와 크기와 밀도가 비슷한 것으로 미루어 내부구조도 비슷할 것으로 추측합니다.<br/>
두 행성의 지각에 있어서 가장 큰 차이라고 볼 수 있는것은 금성에는 지질구조판의 활동이 보이지 않는다는 점입니다.<br/>
이는 금성의 표면과 맨틀이 건조하기 때문이라고 여겨지는데, 이로 인해 내부의 열 방출이 어져 자기장의 부족을 초래합니다.<br/>
금성은 주기적인 대규모 입을 거치면서 점점 내부의 열을 잃을 것으로 생각됩니다.
</td>
</tr>

</table>
</div>
</div>
 
  <div class='col-xs-3'> 
  <button class="btn btn-info" id="replyadd">댓글작성</button>
<!-- 댓글 작성 및 수정 대화상자 영역 -->
	<div class="box-body" style="display:none" id="replyform">
	<input type="hidden" name="rtype" value="venus" id="rtype"/>
	
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