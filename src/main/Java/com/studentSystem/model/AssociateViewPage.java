package com.studentSystem.model;

import java.util.List;

public class AssociateViewPage {
	private List<AssociateView> list;
	private int curPage;
	private int pageSize;
	private int totalCount;
	private int totalPage;
	public AssociateViewPage(){
		pageSize=5;
	}
	public List<AssociateView> getList() {
		return list;
	}

	public void setList(List<AssociateView> list) {
		this.list = list;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return (int)Math.ceil(totalCount*1.0/pageSize);
	}


}
