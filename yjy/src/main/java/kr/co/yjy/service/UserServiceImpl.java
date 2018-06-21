package kr.co.yjy.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.yjy.dao.UserDao;
import kr.co.yjy.domain.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public String idCheck(HttpServletRequest request) {
		//파라미터 읽기
		String id = request.getParameter("id");
		//Dao의 메소드를 호출해서 결과를 전송
		return userDao.idCheck(id);
	}

	@Override
	public void register(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String name = request.getParameter("name");
		
		User user = new User();
		user.setId(id);
		//암호화해서 넣기
		user.setPw(BCrypt.hashpw(pw,  BCrypt.gensalt(10)));
		user.setNickname(nickname);
		user.setName(name);
		userDao.register(user);
	
	}

	@Override
	public User login(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//Dao 메소드 호출
		User user = userDao.login(id);
		if(user != null) {
			//비밀번호가 일치하면
			if(BCrypt.checkpw(pw, user.getPw()) == true) {
				//비밀번호만 초기화
				user.setPw("");
			}
			//비밀번호가 일치하지 않으면 전부 초기화
			else {
				user = null;
			}
		}
		
		return user;
	}

	@Override
	public List<User> userControl(HttpServletRequest request) {
	
		return userDao.userControl();
	}

	
	@Override
	public boolean userdelete(HttpServletRequest request) {
		boolean result = false;
		
		String id = request.getParameter("id");
		System.out.println(id);
		int r = userDao.userdelete(id);
		
		if(r > 0) {
			result = true;
		}
	
		return result;
		
	}

	

}
