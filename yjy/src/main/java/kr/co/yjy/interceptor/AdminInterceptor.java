package kr.co.yjy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AdminInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		//로그인 정보는 session 의 user 속성에 저장되어 있습니다.
		//로그인 되어 있지 않으면 Controller로 가지 않습니다.
		
		if(session.getAttribute("user.id") == "admin") {
			//사용자의 요청을 session에 dest라는 속성에 저장
			//로그인이 되면 원래의 요청을 처리하기 위해서
			
			//클라이언트의 전체 요청 주소
			String requestURI = request.getRequestURI();
			//서버의 주소
			String contextPath = request.getContextPath();
			//주소 만들기
			String uri = requestURI.substring(contextPath.length() + 1);
			//주소 뒤에 파라미터를 가져오기
			String query = request.getQueryString();
			//실제 주소 
			if(query == null || query.equals("null")) {
				query = "";
			}else {
				query = "?" + query;
			}
			//세션에 주소 저장
			session.setAttribute("dest", uri + query);
			//세션에 메시지 저장
			session.setAttribute("msg", "로그인을 하셔야 이용할 수 있는 서비스 임!!");
			
			//로그인 페이지로 리다이렉트
			response.sendRedirect(contextPath + "/main/main");
			return false;
		}
		//로그인 되어 있는 경우 Controller가 처리
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
