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
<td align="center" colspan="2" ><h2><u>천 왕 성(Uranus)</u></h2></td>
</tr>

<tr>
<td align="right" width="30%">적도 지름:</td>
<td>51.118 km</td>
</tr>

<tr>
<td align="right">질량:</td>
<td>8.7 x 10^25kg</td>
</tr>

<tr>
<td align="right">태양까지의 평균거리:</td>
<td>2.870 M km</td>
</tr>

<tr>
<td align="right">자전 주기:</td>
<td>17시간 14분</td>
</tr>

<tr>
<td align="right">태양 공전주기:</td>
<td>84년</td>
</tr>

<tr>
<td align="right">표면 중력:</td>
<td>8.7 m/s²</td>
</tr>

<tr>
<td align="right">표면 온도:</td>
<td>-210℃</td>
</tr>

<tr>
<td colspan="2" align="center">
천왕성은 태양으로부터 일곱 번째 행성이며 세 번째로 큽니다.<br/>
천왕성은 태양계에서 가장 추운 행성입니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>발견</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
천왕성은 현대 망원경으로 처음 발견된 첫 번째 행성입니다.<br/>
영국의 천문학자인 리엄 허셀이 1781년에 발견했습니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>자전축</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
천왕성의 자전축은 97.77˚기울어져 있습니다.
그러니까 거의 누운채로 태양을 굴러서 공전하는 모습을 하고 있는 셈입니다.
</td>
</tr>

<tr>
<td align="left" colspan="2"><h4>관측</h4></td>
</tr>

<tr>
<td colspan="2" align="center">
천왕성이 충의 위치에 있을때는 육안으로도 관측이 가능합니다. 이 때는 어두운 밤하늘 속에서 희미한 별처럼 보입니다.
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
메테인으로 구성된 천왕성의 대기가 붉은 빛을 흡수해서 천왕성은 청록색을 띕니다.<br/>
기체상태의 대기는 안쪽의 액체층으로 갈수록 점차 액체로 바뀝니다.
</td>
</tr>

<tr>
<td colspan="2" align="left">
<h4>멘틀</h4>
</td>
</tr>

<tr>
<td colspan="2" align="center">
이 고체 멘틀은 상식적인 얼음같은 구성이 아니라 뜨겁고 밀한 유체에 더 가깝습니다. 이 층은 물-암모니아의 바다라고 불리기도 합니다.<br/>

</td>
</tr>

</table>
</div>
</div>
 
  <div class='col-xs-3'> 
  <button class="btn btn-info" id="replyadd">댓글작성</button>
<!-- 댓글 작성 및 수정 대화상자 영역 -->
	<div class="box-body" style="display:none" id="replyform">
	<input type="hidden" name="rtype" value="uranus" id="rtype"/>
	
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