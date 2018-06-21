package kr.co.yjy.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.yjy.dao.ReplyDao;
import kr.co.yjy.domain.Criteria;
import kr.co.yjy.domain.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyDao replyDao;
	
	@Override
	public boolean register(HttpServletRequest request) {
		boolean result = false;
		
		//파라미터
		String id = request.getParameter("id");
		String nickname = request.getParameter("nickname");
		String replytext = request.getParameter("replytext");
		String rtype = request.getParameter("rtype");
		
		//Dao의 파라미터만들기
		Reply reply = new Reply();
		reply.setId(id);
		reply.setNickname(nickname);
		reply.setReplytext(replytext);
		reply.setRtype(rtype);
		
		//dao메소드 호출
		int r = replyDao.register(reply);
		
		//dao의 호출결과를 가지고 리턴할 결과 만들기
		if(r > 0)
			result = true;
		
		return result;
	}



	@Override
	public boolean delete(HttpServletRequest request) {
		boolean result = false;
		
		String rno = request.getParameter("rno");
		
		int r = replyDao.delete(Integer.parseInt(rno));
		
		if(r > 0 ) {
			result = true;
		}
		
		return result;
	}

	@Override
	public boolean update(HttpServletRequest request) {
		boolean result = false;
		
		String rno = request.getParameter("rno");
		String replytext = request.getParameter("replytext");
		
		//dao 매개변수 만들기
		Reply reply = new Reply();
		reply.setRno(Integer.parseInt(rno));
		reply.setReplytext(replytext);
		
		int r = replyDao.update(reply);
		if(r > 0) {
			result = true;
		}
		return result;
	}

	@Override
	public Integer totalCount() {
		return replyDao.totalCount();
	}

	@Override
	public List<Reply> sunlist(HttpServletRequest request) {
		return replyDao.sunlist();
	}
	@Override
	public List<Reply> mercurylist(HttpServletRequest request) {
		return replyDao.mercurylist();
	}



	@Override
	public List<Reply> venuslist(HttpServletRequest request) {
		return replyDao.venuslist();
	}



	@Override
	public List<Reply> earthlist(HttpServletRequest request) {
		return replyDao.earthlist();
	}



	@Override
	public List<Reply> marslist(HttpServletRequest request) {
		return replyDao.marslist();
	}



	@Override
	public List<Reply> jupiterlist(HttpServletRequest request) {
		return replyDao.jupiterlist();
	}



	@Override
	public List<Reply> saturnlist(HttpServletRequest request) {
		return replyDao.saturnlist();
	}



	@Override
	public List<Reply> uranuslist(HttpServletRequest request) {
		return replyDao.uranuslist();
	}



	@Override
	public List<Reply> neptunelist(HttpServletRequest request) {
		return replyDao.neptunelist();
	}

	
	
}
