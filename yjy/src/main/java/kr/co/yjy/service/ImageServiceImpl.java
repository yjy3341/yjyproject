package kr.co.yjy.service;

import java.io.File;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.yjy.dao.ImageDao;
import kr.co.yjy.domain.Image;
import kr.co.yjy.domain.Reply;
import kr.co.yjy.domain.User;

@Service
public class ImageServiceImpl implements ImageService {
	
	@Autowired
	ImageDao imageDao;
	
	@Override
	public void imageregister(MultipartHttpServletRequest request) {
		//파라미터
		String imagetitle = request.getParameter("imagetitle");
		//파일 읽기
		MultipartFile image = request.getFile("image");
		
		//파일 저장할 경로 만들기
		//파일은 절대경로로만 저장이 가능
		//프로젝트 내의 userimage 디렉토리의 절대 경로를 만들기
		String uploadPath = request.getRealPath("/userimage");
		
		//랜덤한 64자리의 문자열 만들기
		UUID uid = UUID.randomUUID();
		//원본 파일이름 가져오기
		String filename = image.getOriginalFilename();
		filename = uid + "_" + filename;
		
		//업로드할 파일의 실제 경로 만들기
		String filepath = uploadPath + "\\" + filename;
		//Dao의 파라미터로 사용할 객체
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		String id = user.getId();
		String nickname = user.getNickname();
		//업로드할 파일 객체 만들기
		File f = new File(filepath);
		Image image1 = new Image();
		try {
			//파일 전송 - 파일 업로드
			image.transferTo(f);
			//Dao파라미터 만들기
			
			image1.setId(id);
			image1.setImagetitle(imagetitle);
			image1.setImage(filename);
			image1.setNickname(nickname);
			
			imageDao.imageregister(image1);
		} catch (Exception e) {
			System.out.println("이미지넣기 실패" + e.getMessage());
		}
		
	}
	
	
	@Override
	public List<Image> imagelist(HttpServletRequest request) {
		return imageDao.imagelist();
	}


	@Override
	public boolean delete(HttpServletRequest request) {
		boolean result = false;
		
		String ino = request.getParameter("ino");
		
		int r = imageDao.delete(Integer.parseInt(ino));
		
		if(r > 0 ) {
			result = true;
		}
		
		return result;
	}

}
