package kr.co.yjy;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.yjy.domain.Image;
import kr.co.yjy.service.ImageService;

@RestController
public class ImageJsonController {
	@Autowired
	private ImageService imageService;
	
	/*image*/
	/*--------------------------------------------------*/
	@RequestMapping(value="image/imagelist",method=RequestMethod.GET)
	public List<Image> imate(HttpServletRequest request){
		return imageService.imagelist(request);
	}
	
	@RequestMapping(value="image/imagedelete",method=RequestMethod.GET)
	public Map<String, Object>imagedelete(HttpServletRequest request){
		boolean result = imageService.delete(request);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("result", result);
		return map;
	}
}
