package org.lianteam.vo;

import java.util.List;

import org.lianteam.pojo.Archive;

public class ArchiveExtend extends Archive {
	//��չ��Archive�� ��Archive���� ������ limit �������ݿ�Ĳ�ѯ
	private int limit;//��ѯ�б������//��ֵ���ܺ���
	private Archive archive;//��Ҫ��archive��
	private List<Integer> category_idList;//category����ֵ������or��ϵȡ������//��ֵ���ܺ���
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
