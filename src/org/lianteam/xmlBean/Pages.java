package org.lianteam.xmlBean;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Pages {
	private List<Page> page;//��xml�ļ��е�ÿ��page�ڵ��װ
	//getter...setter...
	//�±߷����ü�������Զ���xmlתΪ����
	public List<Page> getPage() {
		return page;
	}

	public void setPage(List<Page> page) {
		this.page = page;
	}
	
	//�±߷���Ϊ�����廯��ȡ
	public List<Page> getPageList()
	{
		return page;
	}
	public void setPageList(List<Page> pageList)
	{
		this.page = pageList;
	}
}
