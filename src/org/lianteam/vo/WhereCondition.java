package org.lianteam.vo;

import java.util.List;

public class WhereCondition {
	private int limit;//��ѯ�б�������//��ֵ���ܺ���
	private List<Integer> category_idList;//category����ֵ������or��ϵȡ������//��ֵ���ܺ���
	private List<Integer> idList;
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
}