package kr.co.yjy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yjy.domain.Criteria;
import kr.co.yjy.domain.Reply;

@Repository
public class ReplyDao {
	@Autowired
	private SqlSession sqlSession;
	
	public int register(Reply reply) {
		return sqlSession.insert("reply.register",reply);
	}
	
	public int delete(int rno) {
		return sqlSession.delete("reply.delete", rno);
	}
	
	public int update(Reply reply) {
		return sqlSession.update("reply.update", reply);
	}
	
	public int totalCount() {
		return sqlSession.selectOne("reply.totalcount");
	}
	
	public List<Reply> sunlist(){
		return sqlSession.selectList("reply.sunlist");
	}
	
	public List<Reply> mercurylist(){
		return sqlSession.selectList("reply.mercurylist");
	}
	
	public List<Reply> venuslist(){
		return sqlSession.selectList("reply.venuslist");
	}
	
	public List<Reply> earthlist(){
		return sqlSession.selectList("reply.earthlist");
	}
	
	public List<Reply> marslist(){
		return sqlSession.selectList("reply.marslist");
	}
	
	public List<Reply> jupiterlist(){
		return sqlSession.selectList("reply.jupiterlist");
	}
	
	public List<Reply> saturnlist(){
		return sqlSession.selectList("reply.saturnlist");
	}
	
	public List<Reply> uranuslist(){
		return sqlSession.selectList("reply.uranuslist");
	}
	
	public List<Reply> neptunelist(){
		return sqlSession.selectList("reply.neptunelist");
	}
}
