package kr.co.yjy;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.co.yjy.service.UserService;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	//user/register 라는 요청이 오면
	//user/register.jsp 파일로 포워딩
	@RequestMapping(value="user/register",method=RequestMethod.GET)
		public String register(Model model){
			return "user/register";
		}
		
	//회원 가입을 처리하는 메소드
	@RequestMapping(value="user/register",method=RequestMethod.POST)
	//RedirectAttributes는 redirect로 이동할 때 한번만 전달되는 데이터를
	//보관하는 Spring의 클래스
	public String register(HttpServletRequest request,RedirectAttributes attr) {
		userService.register(request);
		attr.addFlashAttribute("msg", "회원가입에 성공하였습니다.");
		//삽입, 삭제, 갱신 다음에는 리다이렉트로 이동
		return "redirect:/";
	}
	
		
		@RequestMapping(value="main/main",method=RequestMethod.GET)
		public String main(Model model){
			return "main/main";
		}
		
		@RequestMapping(value="admin/usercontrollist", method=RequestMethod.GET)
		public String usercontrollist(Model model){
			
			return "admin/usercontrollist";
		}
		
		
		
}
