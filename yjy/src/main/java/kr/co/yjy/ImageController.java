package kr.co.yjy;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.yjy.dao.ImageDao;
import kr.co.yjy.domain.Image;
import kr.co.yjy.service.ImageService;
                                                                                      
@Controller
public class ImageController {

	@Autowired
	private ImageService imageService;

	
	@RequestMapping(value = "image/image", method = RequestMethod.GET)
	public String image(HttpServletRequest request, Model model) {		
		return "image/image";
	}
	
	
	@RequestMapping(value = "image/imageupload", method = RequestMethod.GET)
	public String imageupload(Locale locale, Model model) {		
		return "image/imageupload";
	}
	
	@RequestMapping(value = "image/imageupload", method = RequestMethod.POST)
	public String imageupload(MultipartHttpServletRequest request, RedirectAttributes attr) {
		imageService.imageregister(request);
		attr.addFlashAttribute("msg","성공");
		return "redirect:image";
	}
	

/*	@RequestMapping(value = "image/delete", method = RequestMethod.GET)
	public String delete(HttpServletRequest request, Model model,RedirectAttributes attr) {
		//서비스 메소드 호출
		imageService.delete(request);
		//메시지 저장
		attr.addFlashAttribute("msg", "게시글 삭제 성공");
		//결과 페이지 결정
		return "redirect:imagedelete";
	}*/
	
}
