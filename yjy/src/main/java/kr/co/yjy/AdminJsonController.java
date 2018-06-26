package kr.co.yjy;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.yjy.domain.User;
import kr.co.yjy.service.UserService;

@RestController
public class AdminJsonController {
	@Autowired
	private UserService userService;

	@RequestMapping(value="admin/usercontrol", method=RequestMethod.GET)
	public List<User> usercontrol(HttpServletRequest request){
		
		return userService.userControl(request);
	}
	
	@RequestMapping(value="admin/userdelete", method=RequestMethod.GET)
	public Map<String, Object> userdelete(HttpServletRequest request, Model model,RedirectAttributes attr){
		boolean result = userService.userdelete(request);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("result", result);
		return map;
	}
	
}
