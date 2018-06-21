<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../include/header.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js">
</script>
<script src="${pageContext.request.contextPath}/resources/sock/sockjs-0.3.4.js">
</script>


</head>
<body>
<div class="row">
	<div class="col-xs-1"><%@include file="../include/mainheader.jsp"%></div>
   <div class="col-xs-4">

 	<%-- <input type="text" name="nickname"
					value="${user.nickname}" readonly="readonly" class="form-control"/> --%>
   <!--  <input type="button" id="sendBtn" value=""/> -->
    <div class="panel panel-default">
        
     <div class="panel-heading">
     
     <div class="col-xs-6">
     
    <div class="input-group">

    
     <input type="text" class="form-control" id="message">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" id="sendBtn">전송</button>
      </span>
    </div>
	<!-- col-xs-6 --> </div><br/><br/>
	
  <!-- panel-heading --> </div><br/>
  <div class="row">
  
      <div class="col-xs-8">
    <div id="data"></div>
    </div>
    <div class="col-xs-2"></div>
    </div>
 </div>
 </div>
 </div>
</body>
<script>
 
    $(document).ready(function(){
        $("#sendBtn").click(function(){
            sendMessage();
        });
    });
    
    //websocket을 지정한 URL로 연결
    var sock= new SockJS("<c:url value="/chat"/>");
    //websocket 서버에서 메시지를 보내면 자동으로 실행된다.
    sock.onmessage = onMessage;
    //websocket 과 연결을 끊고 싶을때 실행하는 메소드
    sock.onclose = onClose;
    
    
    function sendMessage(){
  
            //websocket으로 메시지를 보내겠다.
            sock.send($("#message").val());
        
    }

    
    //evt 파라미터는 websocket이 보내준 데이터다.
    function onMessage(evt){  //변수 안에 function자체를 넣음.
        
        var data = evt.data;
        
        $("#data").append("<ul class='list-grop'>"+
        		"닉네임 : " + "<mark>"+ "${user.nickname}" + "</mark>" + "<li class='list-group-item'>"
        		+ data+ "</li>"+"</ul>"+"<br/>"); 
        
        /* sock.close(); */
        ;
    }
    
    function onClose(evt){
        $("#data").append("연결 끊김");
    }
    
</script>
</html>
