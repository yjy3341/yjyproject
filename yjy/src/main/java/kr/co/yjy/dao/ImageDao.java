package kr.co.yjy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import kr.co.yjy.domain.Image;
import kr.co.yjy.domain.Reply;

@Repository
public class ImageDao {
	@Autowired
	SqlSession sqlSession;
	
	//사진 올리기
	public void imageregister(Image image1) {
		System.out.println(image1);
		sqlSession.insert("image.imageregister",image1);
	}

	//사진 리스트
	public List<Image> imagelist(){
		return sqlSession.selectList("image.imagelist");
	}
	
	//사진 삭제
	public int delete(int ino) {
		return sqlSession.delete("image.delete", ino);
	}
	
}
