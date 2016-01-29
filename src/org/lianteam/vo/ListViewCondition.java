package org.lianteam.vo;

public class ListViewCondition {
	private int category_id;
	private int limit;
	public ListViewCondition(int category_id,int limit)
	{
		this.category_id = category_id;
		this.limit = limit;
	}
	public ListViewCondition()
	{
		
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	

}
