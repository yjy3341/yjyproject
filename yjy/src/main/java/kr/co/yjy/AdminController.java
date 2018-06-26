package kr.co.yjy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {


	@RequestMapping(value="admin/usercontrollist", method=RequestMethod.GET)
	public String usercontrollist(Model model){
		
		return "admin/usercontrollist";
	}
	
}
