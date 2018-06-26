package kr.co.yjy;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.yjy.service.UserService;

@RestController
public class JsonController {
	@Autowired
	private UserService userService;
	
	//id 중복 체크 요청을 처리
	@RequestMapping(value="user/idcheck",method=RequestMethod.GET)
	public Map<String, Object> idCheck(HttpServletRequest request){
		//존재하는 id이면 id에 그 id 저장되고
		//존재하지 않는 id이면 null이 저장됩니다.
		String id = userService.idCheck(request);
		
		Map<String, Object> map =
				new HashMap<String, Object>();
		map.put("result", id == null);
		
		return map;
	}
}
