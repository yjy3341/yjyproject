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
<td align="center" colspan="2" ><h2><u>목 성(Jupiter)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>142.984 km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>1.9 x 10^27kg</td>
</tr>

<tr>
<td align="right">태양까지의 평균거리:</td>
<td>778 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>9시간 55분</td>
</tr>

<tr>
<td align="right">태양 공전주기:</td>
<td>11.9년</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>25 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>-120℃</td>
</tr>

<tr>
<td colspan="2" align="center">
목성은 태양계에서 가장 큰 행성입니다.<br/>
목성의 질량은 태양계 나머지 행성들의 질량들을 모두 합친 것보다도 2.5배나 큽니다. 하지만 태양과 비교했을 때 목성의 질량은 태양의 천분의 일에 불과합니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>항성 닮음성</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
목성은 구성성분상 태양과 비슷합니다. 하지만 목성이 태양과 같이 수소 핵융합을 하기 위해서는 지금 질량의 75배나 더 커져야 합니다.
지금보다 질량이 13배 정도 더 컸다면 중소수를 태우며 갈색 왜성이 되었을 것입니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>대기</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
목성의 자전속도는 여타 행성들 보다도 빠릅니다. 이 엄청난 자전속도 때문에 외부 대기가 위도에 따라 여러 개의 따로 분리되어 흐르고, 고기압성 폭풍이 형성되어 재적점을 만듭니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>위성</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
목성의 위성은 현재 공식적으로 67개로, 행성들 중에서 가장 많은 위성을 보유하고 있습니다.<br/>
그 중 가장 큰 4개의 위성은 갈릴레이 위성으로, 이오, 유로파, 가니메데, 칼리스토로 구성됩니다.<br/>
태양계에서 가장 큰 위성인 가니메데는 수성보다도 큰 크기를 가지고 있습니다.
</td>
</tr>
<tr>
<td align="left" colspan="2"><h4>관측</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
목성은 태양, 달, 금성 다음으로 하늘에서 가장 밝은 천체입니다.<br/>
지구보다 바깥 궤도를 돌기 때문에 지구에서 관측할때는 언제나 밝은 면만 보입니다.
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
목성은 대부분이 기체와 액체물질로 구성되어 있습니다.<br/>
딱딱한 표면이 없고, 내부로 들어갈수록 대기의 층만 바뀝니다.<br/>
내려갈수록 더 높아지는 압력 때문에 기체들은 점점 액체로 바뀝니다.
</td>
</tr>

<tr>
<td colspan="2" align="left"><h4>맨틀</h4></td>
</tr>

<tr>
<td align="center" colspan="2">
액체수소층은 목성의 강력한 자기장의 원인이 됩니다.<br/>
목성의 자기장은 전체적으로 10배나 강하고, 목성의 극에서는 지구의 극보다 20,000배나 강합니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>핵</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
목성은 고밀도의 핵을 가지고 있을것으로 생각됩니다.<br/>
구체적인 구성성분에 대한 정보는 없지만 그정도 깊이에서의 온도와 압력조건으로 보았을 때, 고체상태로 존재할 것으로 추측됩니다.
</td>
</tr>

</table>
</div>
</div>
 
  <div class='col-xs-3'> 
  <button class="btn btn-info" id="replyadd">댓글작성</button>
<!-- 댓글 작성 및 수정 대화상자 영역 -->
	<div class="box-body" style="display:none" id="replyform">
	<input type="hidden" name="rtype" value="jupiter" id="rtype"/>
	
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