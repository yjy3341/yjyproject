package kr.co.yjy;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.yjy.domain.User;
import kr.co.yjy.service.UserService;


@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {		
		return "home";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request,Model model,
			RedirectAttributes attr, HttpSession session) {
		User user = userService.login(request);
		if(user == null) {
			attr.addFlashAttribute("msg","아이디 또는 비밀번호가 틀렸습니다.");
			return "redirect:/";
		}
		else {
			session.setAttribute("user", user);
			//이전 요청 가져오기
			Object dest = session.getAttribute("dest");
			//이전 요청이 없으면 시작페이지로 이동
			if(dest == null) {
				return "redirect:main/main";
			}
			//이전 요청이 있으면
			else {
			return "redirect:/" + dest.toString();
			}
		}
	}

	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String logout(HttpSession session){
		//세션 초기화
		session.invalidate();

		return "redirect:/";
	}
}
	

	

