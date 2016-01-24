package org.lianteam.xmlBean;

import java.util.List;

public class Page {
	private String pageName;//前端页面名称
	private String functionClassName;//前端数据处理器的名称
	private String dataBind;//前段数据绑定的名称
	private int limit;//前段要显示的条目数量限制
	private List<Integer> id;//前段要显示的表的id
	private List<Integer> category_id;//前段要显示的数据所在的分类
	//getter....setter...
	public String getPageName() {
		return pageName;
	}
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	public String getFunctionClassName() {
		return functionClassName;
	}
	public void setFunctionClassName(String functionClassName) {
		this.functionClassName = functionClassName;
	}
	public String getDataBind() {
		return dataBind;
	}
	public void setDataBind(String dataBind) {
		this.dataBind = dataBind;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public List<Integer> getId() {
		return id;
	}
	public void setId(List<Integer> id) {
		this.id = id;
	}
	public List<Integer> getCategory_id() {
		return category_id;
	}
	public void setCategory_id(List<Integer> category_id) {
		this.category_id = category_id;
	}
	
}
