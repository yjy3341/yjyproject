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
<td align="center" colspan="2" ><h2><u>토 성(Saturn)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>120.536 km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>5.7 x 10^26kg</td>
</tr>

<tr>
<td align="right">태양까지의 평균거리:</td>
<td>1.427 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>10시간 39븐</td>
</tr>

<tr>
<td align="right">태양 공전주기:</td>
<td>29년</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>10.4 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>-125℃</td>
</tr>

<tr>
<td colspan="2" align="center">
토성은 태양으로부터 여섯 번째 행성이며 두번째로 큽니다.<br/>
현대 망원경이 개발되기 전까지는 토성이 태양계의 가장 바깥 행성으로 여겨졌습니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>질량</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
큰 크기에도 불구하고 토성의 밀도는 태양계의 어느 행성들보다도 작은데, 지구의 ⅛에 불과합니다.(반면에 지름은 지구보다 9배나 큽니다.) 밀도가 물보다도 작습니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>고리</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
다른 목성형 행성들도 고리를 가지고 있긴 하지만 토성의 고리는 그 중 가장 크고 잘 보입니다.<br/>
고리는 얼음 결정과 일부 암석들로 구성되어있는데, 그 크기가 먼지부터 산까지 다양합니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>위성</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
토성은 최소 150개의 위성과 소위성을 가지고 있습니다.<br/>
정확한 수는 확실하지 않은데, 고리의 큰 입자들과 작은 위성들을 구분짓기가 애매하기 때문입니다.<br/>
토성의 몇몇 위성들은 고리들이 바깥으로 퍼져나가지 못하도록 가두어두는 역할을 하기도 합니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>관측</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
육안으로는 밤하늘에서 노랗게 빛나는 점으로 보입니다.<br/>
고리를 보기 위해서는 최소 30배율의 광학기구가 필요합니다.
</td>
</tr>

<tr>
<td colspan="2" align="center">
<h3><u>내부구조</u></h3>
</td>
</tr>

<tr>
<td colspan="2" align="center">
토성의 내부구조는 목성과 비슷합니다. 다만 목성보다 밀도가 작아 태양계의 행성 중 가장 밀도가 작습니다.<br/>
빠른 자전속도로 인해 태양계의 행성들 중에서 가장 찌그러진 모습을 하고 있어서, 적도지금과 극지름의 차이가 거의 10%에 달합니다.
</td>
</tr>

<tr>
<td colspan="2" align="left"><h4>대기</h4></td>
</tr>

<tr>
<td align="center" colspan="2">
목성보다 약한 중력으로 인해서 토성의 대기는 목성보다 약한 연한색인 노란색을 띕니다.<br/>
토성의 대기가 움직이는 속도는 목성보다 5배 가량 빠릅니다.<br/><br/>
토성은 태양으로부터 받는 열의 2.5배의 열을 자체생산합니다.<br/>
이 열은 내부 깊숙한 곳의 헬륨이 위쪽의 저밀도의 수소를 통과하면서 발생하는 마찰열을 인해 만들어집니다.
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
	<input type="hidden" name="rtype" value="satum" id="rtype"/>
	
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