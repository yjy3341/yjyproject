package kr.co.yjy.service;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.yjy.dao.BoardDao;
import kr.co.yjy.domain.Board;
import kr.co.yjy.domain.Criteria;
import kr.co.yjy.domain.PageMaker;
import kr.co.yjy.domain.SearchCriteria;
import kr.co.yjy.domain.User;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao boardDao;

	@Override
	public void register(HttpServletRequest request) {
		//파라미터
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		//파라미터를 이용해서 수행할 작업이 있으면 수행
		//로그인 한 유저의 id와 nickname은 session의 user속성에 있음
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String id = user.getId();
		String nickname = user.getNickname();
		
		//Dao 메소드의 파라미터를 생성
		Board board = new Board();
		board.setId(id);
		board.setContent(content);
		board.setTitle(title);
		board.setNickname(nickname);
		
		boardDao.register(board);
	}

	@Override
	public List<Board> list(SearchCriteria criteria) {
		
		/*Map<String, Object> map = new HashMap<String, Object>();*/
		
		//데이터 가져오기
		List<Board> list = boardDao.list(criteria);
		//마지막 페이지에 있는 데이터가 1개 밖에 없을 때 
		//그 데이터를 삭제하면 그 페이지의 데이터는 없음.
		if(list.size() == 0) {
			//현재 페이지 번호를 1 감소시켜서 데이터를 다시 가져오기
			criteria.setPage(criteria.getPage()-1);
			list = boardDao.list(criteria);
		}
		
		//오늘 날짜 만들기
		Calendar cal = Calendar.getInstance();
		java.sql.Date today = new java.sql.Date(cal.getTimeInMillis());
		//list의 데이터들을 확인해서 날짜와 시간을 저장
		for(Board board : list) {
			//작성한 날짜 가져오기
			String regdate = board.getRegdate().substring(0, 10);
			if(today.toString().equals(regdate)) {
				//시간 저장
				board.setDispDate(board.getRegdate().substring(11, 16));;
			}else {
				//날짜 저장
				board.setDispDate(regdate);
			}
		}

		return list;
	}

	@Override
	public Board detail(HttpServletRequest request) {
		//파라미터
		String bno = request.getParameter("bno");
		
		//조회수
		boardDao.updatecnt(Integer.parseInt(bno));
		
		return boardDao.detail(Integer.parseInt(bno));
	}

	@Override
	public Board updateview(HttpServletRequest request) {
		//파라미터
		String bno = request.getParameter("bno");
		//메소드 호출 리턴
		return boardDao.detail(Integer.parseInt(bno));
	}

	@Override
	public void update(HttpServletRequest request) {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String bno = request.getParameter("bno");
		
		Board board = new Board();
		board.setContent(content);
		board.setTitle(title);
		board.setBno(Integer.parseInt(bno));
		
		boardDao.update(board);
				
		
	}

	@Override
	public void delete(HttpServletRequest request) {
		String bno = request.getParameter("bno");
		
		boardDao.delete(Integer.parseInt(bno));
		
	}

	@Override
	public Integer totalCount(SearchCriteria criteria) {
		
		return boardDao.totalCount(criteria);
	}



}
