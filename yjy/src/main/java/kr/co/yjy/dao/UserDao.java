package kr.co.yjy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yjy.domain.User;

@Repository
public class UserDao {
	//XML Mapper를 이용하는 MyBatis 클래스의 객체를 주입
	@Autowired
	private SqlSession sqlSession;
	
	//id중복 체크 메소드
	public String idCheck(String id) {
		//sql실행
		return sqlSession.selectOne("user.idcheck",id);
	}
	//회원 가입을 위한 메소드
	public void register(User user) {
		sqlSession.insert("user.register", user);
	}
	
	//로그인 처리를 위한 메소드
	public User login(String id) {
		return sqlSession.selectOne("user.login", id);
	}
	
	public List<User> userControl() {
		
		return sqlSession.selectList("user.usercontrol");
	}
	
	
	public int userdelete(String id) {
		System.out.println(id);
		return sqlSession.delete("user.userdelete",id);
	}
}
