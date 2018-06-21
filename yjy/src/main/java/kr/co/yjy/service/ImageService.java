package kr.co.yjy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.yjy.domain.Image;

public interface ImageService {
	//파일이 있을 때는 HttpServletRequest 대신에 MultipartHttpServletRequest를 사용
	public void imageregister(MultipartHttpServletRequest request);
	
	public List<Image> imagelist(HttpServletRequest request);
	
	public boolean delete(HttpServletRequest request);
	

}
