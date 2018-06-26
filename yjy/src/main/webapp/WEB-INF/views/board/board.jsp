<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@include file="../include/header.jsp"%>
<body>

	
	<div class="row">
	<div class="col-xs-1"><%@include file="../include/mainheader.jsp"%></div>
	<div class="col-xs-5">
	<div class="box">
		<div class="box-header with-border">
<c:if test="${msg != null}">
				<h3 class="box-title">${msg}</h3>
			</c:if>
		</div>
		
		<div class="box-body">
			<table class="table table-bordered table-hover">
				<tr>
					<th width="11%">글번호</th>
					<th width="46%">제목</th>
					<th width="16%">작성자</th>
					<th width="16%">작성일</th>
					<th width="11%">조회수</th>
				</tr>
				
						<c:forEach var="ad" items="${map.list}">
						
						<c:if test ="${ad.id == 'admin'}">
						<tr  bgcolor=pink>
						<td align="center"><공지></td>
						<!-- 상세보기 링크: 상세보기 한 후 이전 목록으로 돌아가도록 할려면
						현재 페이지 번호와 페이지당 출력개수를 가지고 가야 합니다. -->
				 	<td>&nbsp; <a href="detail${pageMaker.makeSearch(pageMaker.criteria.page)}&bno=${ad.bno}">${ad.title}</a></td>
					
						<td>&nbsp;${ad.nickname}</td>
						<td>&nbsp; ${ad.dispDate}</td>				
						<td align="right"><span class="badge bg-blue">${ad.readcnt}</span>&nbsp;</td> 
						</tr>
						</c:if>
						</c:forEach>
					 
				<c:forEach var="vo" items="${map.list}">
				
					<c:if test="${vo.id != 'admin'}"> 
					<tr>
					
						<td align="right">${vo.bno}&nbsp;</td>
						<!-- 상세보기 링크: 상세보기 한 후 이전 목록으로 돌아가도록 할려면
						현재 페이지 번호와 페이지당 출력개수를 가지고 가야 합니다. -->
						<!-- pageMaker.makeQuery(pageMaker.criteria.page) -->
						<td>&nbsp; <a href="detail${map.pageMaker.makeSearch(pageMaker.criteria.page)}&bno=${vo.bno}">${vo.title}</a></td>
						<td>&nbsp;${vo.nickname}</td>
						<td>&nbsp; ${vo.dispDate}</td>						
						<td align="right"><span class="badge bg-blue">${vo.readcnt}</span>&nbsp;</td>
					</tr>
					</c:if> 
				</c:forEach>
			</table>
		</div>
		<div class="box-footer text-center">
			<ul class="pagination">
					<!-- 이전 링크 -->
					<c:if test="${map.pageMaker.prev}">
						<li><a href=
						"board?page=${map.pageMaker.makeSearch(pageMaker.startPage-1)}&perPageNum=${map.pageMaker.criteria.perPageNum}">이전</a></li>
					</c:if>		
					<!-- 페이지 번호 -->
					<c:forEach var="idx" 
						begin="${map.pageMaker.startPage}" 
						end="${map.pageMaker.endPage}">
						<li><a href="board${map.pageMaker.makeSearch(idx)}">${idx}</a></li>
					</c:forEach>
					<!-- 다음 링크 -->
					<c:if test="${map.pageMaker.next}">
						<li><a href="board?page=${map.pageMaker.makeSearch(pageMaker.endPage+1)}&perPageNum=${map.pageMaker.criteria.perPageNum}">다음</a></li>
					</c:if>				
			</ul>
		</div>
		
	</div>
	<a class="btn btn-default" href="../board/register" role="button">게시물 작성</a>
	
	<div class="box-body text-center">
	<select name="searchType" id="searchType">
		<option value="n"
		 <c:out value="${map.pageMaker.criteria.searchType==null?'selected':''}"/>
		>--</option>

		<option value="t"
		 <c:out value="${map.pageMaker.criteria.searchType=='t'?'selected':''}"/>
		>제목</option> 
	
		<option value="c"
		 <c:out value="${map.pageMaker.criteria.searchType=='c'?'selected':''}"/>
		>내용</option>
	</select>

	<input type="text" name="keyword" id="keyword" 
		value="${map.pageMaker.criteria.keyword}"/>
	<input type="button" class="btn btn-warning" value="검색" 
		id="searchBtn"/>	
</div>
</div>


	</div>

<div class="col-xs-4"></div>

</body>
<script>
$('#searchBtn').on("click", function(event){
	var searchType = $("select[name=searchType]").val();
	var keyword = $("input[name=keyword]").val();
	
	console.log("searchType : " + searchType);
	console.log("keyword : " + keyword);
	console.log("http://localhost:8999/yjy/board/board${map.pageMaker.makeQuery(1)}&searchType=" + searchType + "&keyword=" + keyword);
	self.location="/yjy/board/board${map.pageMaker.makeQuery(1)}&searchType=" + searchType + "&keyword=" + keyword;
})

				</script>
<style>
.table th {
   text-align: center;   
}
</style>
</html>
	
