package org.lianteam.xmlBean;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Pages {
	private List<Page> page;//��xml�ļ��е�ÿ��page�ڵ��װ
	//getter...setter...

	public List<Page> getPage() {
		return page;
	}

	public void setPage(List<Page> page) {
		this.page = page;
	}
	
}
