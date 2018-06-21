package kr.co.yjy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yjy.domain.Board;
import kr.co.yjy.domain.Criteria;
import kr.co.yjy.domain.SearchCriteria;

@Repository
public class BoardDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void register(Board board) {
		sqlSession.insert("board.register",board);
	}
	
	public List<Board> list(SearchCriteria criteria){

		return sqlSession.selectList("board.list", criteria);
	}
	//글 번호에 해당하는 데이터의 조회수를 1증가시키는 메소드
	public void updatecnt(int bno) {
		sqlSession.update("board.updatecnt",bno);
		
	}
	//글 번호에 해당하는 데이터를 가져오는 메소드
	public Board detail(int bno) {
		return sqlSession.selectOne("board.detail",bno);
	}
	
	public void update(Board board) {
		sqlSession.update("board.update", board);
	}
	
	public void delete(int bno) {
		sqlSession.delete("board.delete",bno);
	}
	
	public int totalCount(SearchCriteria criteria) {
		return sqlSession.selectOne("board.totalcount", criteria);
	}
}
