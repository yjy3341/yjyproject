package kr.co.yjy;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class ChatHandler extends TextWebSocketHandler {
	

	// 이 List는 1개만 만들어져야 하므로 static으로 선언

	
	private static List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();


	//클라이언트와 연결 된 후
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);
		System.out.println("클라이언트 연결 됨");
	}

	//웹 소켓 서버로 데이터를 전송했을 경우
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		String msg = message.getPayload();
		for (WebSocketSession client : sessionList) {
			client.sendMessage(new TextMessage(msg));
		}
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		
		System.out.println("클라이언트 해제");
		sessionList.remove(session);
		
	}
	
	
}
