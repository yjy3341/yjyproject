package kr.co.yjy;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.yjy.dao.BoardDao;
import kr.co.yjy.dao.ReplyDao;
import kr.co.yjy.domain.Criteria;
import kr.co.yjy.domain.Image;
import kr.co.yjy.domain.PageMaker;
import kr.co.yjy.domain.Reply;
import kr.co.yjy.domain.User;
import kr.co.yjy.service.ImageService;
import kr.co.yjy.service.ReplyService;
import kr.co.yjy.service.UserService;

@RestController
public class ReplyController {
	
	@Autowired
	private ReplyService replyService;

	@RequestMapping(value="reply/register",method=RequestMethod.GET)
	public Map<String, Object> sunregister(HttpServletRequest request){
		boolean result = replyService.register(request);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("result", result);
		return map;
	}

	@RequestMapping(value="reply/delete",method=RequestMethod.GET)
	public Map<String, Object>delete(HttpServletRequest request){
		boolean result = replyService.delete(request);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("result", result);
		return map;
	}
	
	@RequestMapping(value="reply/update",method=RequestMethod.GET)
	public Map<String, Object>update(HttpServletRequest request){
		boolean result = replyService.update(request);
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("result", result);
		return map;
	}
		

	@RequestMapping(value="reply/mercurylist",method=RequestMethod.GET)
	public List<Reply> mercurylist( HttpServletRequest request){
		
		return replyService.mercurylist(request);
	}
	
	@RequestMapping(value="reply/sunlist",method=RequestMethod.GET)
	public List<Reply> sunlist( HttpServletRequest request){
		return replyService.sunlist(request);
		
	}
	
	@RequestMapping(value="reply/venuslist",method=RequestMethod.GET)
	public List<Reply> venuslist( HttpServletRequest request){
		return replyService.venuslist(request);
	}
	
	@RequestMapping(value="reply/earthlist",method=RequestMethod.GET)
	public List<Reply> earthlist( HttpServletRequest request){
		return replyService.earthlist(request);
	}
	
	@RequestMapping(value="reply/marslist",method=RequestMethod.GET)
	public List<Reply> marslist( HttpServletRequest request){
		return replyService.marslist(request);
	}
	
	@RequestMapping(value="reply/jupiterlist",method=RequestMethod.GET)
	public List<Reply> jupiterlist( HttpServletRequest request){
		return replyService.jupiterlist(request);
	}
	
	@RequestMapping(value="reply/saturnlist",method=RequestMethod.GET)
	public List<Reply> saturnlist( HttpServletRequest request){
		return replyService.saturnlist(request);
	}
	
	@RequestMapping(value="reply/uranuslist",method=RequestMethod.GET)
	public List<Reply> uranuslist( HttpServletRequest request){
		return replyService.uranuslist(request);
	}
	
	@RequestMapping(value="reply/neptunelist",method=RequestMethod.GET)
	public List<Reply> neptunelist( HttpServletRequest request){
		return replyService.neptunelist(request);
	}
	
	
	
	
}
