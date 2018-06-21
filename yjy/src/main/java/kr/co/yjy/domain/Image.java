package kr.co.yjy.domain;

public class Image {
	private int ino; //이미지 번호
	private String id;//작성자와 아이디
	private String nickname;//글쓴이 닉네임
	private String imagetitle;//이미지 제목
	private String image;//이미지파일
	private String imagedata;//올린 시간
	private String regdate;
	//날짜 및 시간을 출력할 변수
	//오늘 작성한 글은 시간을 어제 이전에 작성된 글은 날짜를 출력
	private String dispDate;
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
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
	public String getImagetitle() {
		return imagetitle;
	}
	public void setImagetitle(String imagetitle) {
		this.imagetitle = imagetitle;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getImagedata() {
		return imagedata;
	}
	public void setimagemgdata(String imagedata) {
		this.imagedata = imagedata;
	}
	public String getDispDate() {
		return dispDate;
	}
	public void setDispDate(String dispDate) {
		this.dispDate = dispDate;
	}
	@Override
	public String toString() {
		return "Image [ino=" + ino + ", id=" + id + ", nickname=" + nickname + ", imagetitle=" + imagetitle + ", image="
				+ image + ", imagedata=" + imagedata + ", regdate=" + regdate + ", dispDate=" + dispDate + "]";
	}

	
	
}
