package org.lianteam.xmlBean;

import java.util.List;

public class Page {
	private String pageName;//ǰ��ҳ������
	private String functionClassName;//ǰ�����ݴ�����������
	private String dataBind;//ǰ�����ݰ󶨵�����
	private int limit;//ǰ��Ҫ��ʾ����Ŀ��������
	private List<Integer> id;//ǰ��Ҫ��ʾ�ı��id
	private List<Integer> category_id;//ǰ��Ҫ��ʾ���������ڵķ���
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
