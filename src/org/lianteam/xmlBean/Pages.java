package org.lianteam.xmlBean;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Pages {
	private List<Page> page;//将xml文件中的每个page节点封装
	//getter...setter...
	//下边方法让计算机中自动将xml转为对象
	public List<Page> getPage() {
		return page;
	}

	public void setPage(List<Page> page) {
		this.page = page;
	}
	
	//下边方法为了语义化调取
	public List<Page> getPageList()
	{
		return page;
	}
	public void setPageList(List<Page> pageList)
	{
		this.page = pageList;
	}
}
