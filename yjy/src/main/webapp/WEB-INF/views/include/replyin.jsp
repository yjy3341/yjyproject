<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
id = "${user.id}";
getReply();
var rtype = document.getElementById("rtype").value;
//댓글 목록을 가져오는 함수
function getReply(){

	rtype = document.getElementById("rtype").value;
	var url = "../reply/"+rtype+"list";
	//댓글 목록을 가져오는 ajax 요청
	$.ajax({
		url:url,
		data:{"rtype":'${rtype}'},
			  
 		dataType:"json",  
		success:function(data){
			
			//출력 내용을 저장할 변수를 생성
			disp = '';
			//data 배열을 순회 - idx는 인덱스이고 item은 실제 내용
			$(data).each(function(idx, item){
				disp += "<br>"
				disp += "<ul class='list-grop'>";
				disp += item.nickname + "<li class='list-group-item'>" + item.replytext + "</li>" ;
				disp += item.id+"</ul>";

				//접속한 유저와 댓글을 작성한 유저가 동일인이면
				 if(id == item.id || id == 'admin'){
					//삭제 버튼을 생성
					//삭제 버튼이 여러 개 될 수 있는 경우 
					//버튼의 id를 구분할 수 있는 값으로 만들면
					//나중에 id를 가지고 구분할 수 있습니다.
					disp += "<button type='submit' class='btn btn-danger'";
					disp += " id='del" + item.rno + "' ";
					disp += "style='float:right' ";
					disp += "onclick = 'del(this)'>댓글삭제</button>";
				 }
				 if(id == item.id){
					disp += "<button type='submit' class='btn btn-warning'";
					disp += " id='mod" + item.rno + "' ";
					disp += "style='float:right' ";
					disp += "onclick = 'mod(this)'>댓글수정</button>";
				 }
			});
			document.getElementById("replydisp").innerHTML = disp;
		}
	});
}


document.getElementById("replyadd").addEventListener(
	"click", function(){
	$('#replyform').dialog({
		resizable:false,
		height:'auto',
		width:400,
		model:true,
		buttons:{
			"저장":function(){
				$(this).dialog("close");
				//입력한 내용 가져오기
			
				replytext = document.getElementById("replytext").value;
				$.ajax({
					url:"../reply/register",
					data:{
						"rtype":rtype,
						"id":'${user.id}',
						"nickname":'${user.nickname}',
						"replytext": replytext
					},
					dataType:"json",
					success:function(data){
						//댓글을 출력하는 함수를 호출
						getReply();
					}
				});
				
			},
			"취소":function(){
				$(this).dialog("close");
			}
		}
	});
});
//댓글 삭제를 눌렀을 때 호출될 함수
function del(btn){
	//댓글 번호 가져오기
	id = btn.id;
	//댓글번호 만들기 - 앞의 3글자 제외한 부분
	rno = id.substr(3);
	//삭제를 위한 대화상자를 출력
	$('#dialog-confirm').dialog({
		resizable:false,
		height:'auto',
		width:400,
		modal:true,
		buttons:{
			"삭제":function(){
				$(this).dialog("close");
				
				$.ajax({
					url:"../reply/delete",
					data:{"rno": rno},
					dataType:"json",
					success:function(data){
						getReply();
					}
				});
				
			},
			"취소":function(){
				$(this).dialog("close");
			}
		}
	});
}

//댓글 수정 버튼을 눌렀을 때 수행할 내용
function mod(btn){
	id = btn.id;
	rno = id.substr(3);
	
	$('#replyform').dialog({
		resizable:false,
		height:'auto',
		width:400,
		model:true,
		buttons:{
			"수정":function(){
				$(this).dialog("close");
				//입력한 내용 가져오기
				replytext = document.getElementById("replytext").value;
				$.ajax({
					url:"../reply/update",
					data:{
						"replytext": replytext,
						"rno": rno
					},
					dataType:"json",
					success:function(data){
						//댓글을 출력하는 함수를 호출
						getReply();
					}
				});
			},
			"취소":function(){
				$(this).dialog("close");
			}
		}
	});
	
}

</script>
