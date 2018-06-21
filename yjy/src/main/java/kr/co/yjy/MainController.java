package kr.co.yjy;

import org.springframework.beans.factory.support.SecurityContextProvider;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yjy.domain.User;

@Controller
public class MainController {
	@RequestMapping(value="main/sun", method=RequestMethod.GET)
	public String sun(Model model) {
		return "main/sun";
	}
	
	@RequestMapping(value="main/chat", method=RequestMethod.GET)
	public String chat(Model model) {
		return "main/chat";
	}
	
	@RequestMapping(value="main/mercury", method=RequestMethod.GET)
	public String mercury(Model model) {
		return "main/mercury";
	}
	
	@RequestMapping(value="main/venus", method=RequestMethod.GET)
	public String venus(Model model) {
		return "main/venus";
	}
	
	@RequestMapping(value="main/earth", method=RequestMethod.GET)
	public String earth(Model model) {
		return "main/earth";
	}
	
	@RequestMapping(value="main/mars", method=RequestMethod.GET)
	public String mars(Model model) {
		return "main/mars";
	}
	
	@RequestMapping(value="main/jupiter", method=RequestMethod.GET)
	public String jupiter(Model model) {
		return "main/jupiter";
	}
	
	@RequestMapping(value="main/saturn", method=RequestMethod.GET)
	public String saturn(Model model) {
		return "main/saturn";
	}
	
	@RequestMapping(value="main/uranus", method=RequestMethod.GET)
	public String uranus(Model model) {
		return "main/uranus";
	}
	
	@RequestMapping(value="main/neptune", method=RequestMethod.GET)
	public String neptune(Model model) {
		return "main/neptune";
	}
	
	
}
