package org.lianteam.vo;

import java.util.List;

public class WhereCondition {
	private int limit;//查询列表的数量//该值不能忽略
	private List<Integer> category_idList;//category的数值，按照or关系取出数据//该值不能忽略
	private List<Integer> idList;
	private int pageNow;
	private int pageSize;
	//getter...setter...
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public List<Integer> getCategory_idList() {
		return category_idList;
	}
	public void setCategory_idList(List<Integer> category_idList) {
		this.category_idList = category_idList;
	}
	public List<Integer> getIdList() {
		return idList;
	}
	public void setIdList(List<Integer> idList) {
		this.idList = idList;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	
}

