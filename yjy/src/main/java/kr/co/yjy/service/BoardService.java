package kr.co.yjy.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.yjy.domain.Board;
import kr.co.yjy.domain.Criteria;
import kr.co.yjy.domain.SearchCriteria;

public interface BoardService {
	//매개변수를 HttpServletRequest를 이용해서 만들면 가장 수월하게 메소드 모양을 만들 수 있습니다.
	public void register(HttpServletRequest request);
	
	//게시글 목록 가져오는
	public Map<String, Object> list(SearchCriteria criteria);/*
	public List<Board> list(SearchCriteria criteria);*/

	//게시글 상세보기
	public Board detail(HttpServletRequest request);
	
	//게시글 수정하는 화면
	public Board updateview(HttpServletRequest request);
	
	//게시글 수정하기
	public void update(HttpServletRequest request);
	
	//게시글 삭제하기
	public void delete(HttpServletRequest request);

	//게시글 수 가져오기
	Integer totalCount(SearchCriteria criteria);
}
