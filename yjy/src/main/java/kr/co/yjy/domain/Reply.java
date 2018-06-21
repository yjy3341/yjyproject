package kr.co.yjy.domain;

public class Reply {
	 private int rno;
	 private String id;
	 private String nickname;
	 private String replytext;
	 private String regdate;
	 private String rtype;
	 
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return String.format("Reply [rno=%s, id=%s, nickname=%s, replytext=%s, regdate=%s, rtype=%s]", rno, id,
				nickname, replytext, regdate, rtype);
	}
	
	
	 
}
