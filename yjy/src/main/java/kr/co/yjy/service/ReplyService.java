package kr.co.yjy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.co.yjy.domain.Criteria;
import kr.co.yjy.domain.Reply;

public interface ReplyService {

	public boolean register(HttpServletRequest request); 
		

	public boolean delete(HttpServletRequest request);
	
	public boolean update(HttpServletRequest request);
	
	public Integer totalCount();

	public List<Reply> sunlist(HttpServletRequest request);
	
	public List<Reply> mercurylist(HttpServletRequest request);
	
	public List<Reply> venuslist(HttpServletRequest request);
	
	public List<Reply> earthlist(HttpServletRequest request);
	
	public List<Reply> marslist(HttpServletRequest request);
	
	public List<Reply> jupiterlist(HttpServletRequest request);
	
	public List<Reply> saturnlist(HttpServletRequest request);

	
	public List<Reply> uranuslist(HttpServletRequest request);
	
	public List<Reply> neptunelist(HttpServletRequest request);
}
