package kr.co.yjy.domain;

public class Criteria {
	//현재 페이지 번호
	private int page;
	//페이지에 출력할 데이터 개수
	private int perPageNum;
	//현재 페이지의 데이터 의 시작 번호
	private int pageStart;
	
	public Criteria() {
		page = 1;
		perPageNum = 10;
	}

	public int getPage() {
		
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			//페이지는 1페이지부터임으로 0보다 작거나 같은값일 경우 무조건 첫번째 페이지로 설정되도록 함.
			this.page= 1;
	}else {
		this.page = page;
	}
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if(perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
		}else {
			this.perPageNum = perPageNum;
		}
	}

	public int getPageStart() {
		/*//자동으로 계산
		//page-현재 페이지 번호
		//perPageNum-페이지 당 출력 개수 */
		pageStart = (page-1)*perPageNum + 1;
		return pageStart;
		/*return (this.page - 1) * this.perPageNum;*/
	}

	
	//현재 페이지의 데이터 시작 번호는 입력받는 항목이 아니므로
	//setter를 제거해서 만약의 경우를 대비합니다.
	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}
	

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", pageStart=" + pageStart + "]";
	}

	
}

