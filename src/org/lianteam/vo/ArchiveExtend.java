package org.lianteam.vo;

import java.util.List;

import org.lianteam.pojo.Archive;

public class ArchiveExtend extends Archive {
	//扩展了Archive类 在Archive类中 增加了 limit 便于数据库的查询
	private int limit;//查询列表的数量//该值不能忽略
	private Archive archive;//需要的archive类
	private List<Integer> category_idList;//category的数值，按照or关系取出数据//该值不能忽略
	private List<Integer> idList;
	private String pageNow;
	private String rowCount;
	//getter...setter...
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public Archive getArchive() {
		return archive;
	}
	public void setArchive(Archive archive) {
		this.archive = archive;
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
	public String getPageNow() {
		return pageNow;
	}
	public void setPageNow(String pageNow) {
		this.pageNow = pageNow;
	}
	public String getRowCount() {
		return rowCount;
	}
	public void setRowCount(String rowCount) {
		this.rowCount = rowCount;
	}
	
	
	
}
