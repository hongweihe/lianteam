package org.lianteam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.xmlBean.Page;
import org.lianteam.xmlBean.Pages;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;

public class GetDataFromTableToView {
	private XmlToBean xtb;

	public GetDataFromTableToView()
	{
		
	}
	public Map<String,Object> GetDataByModuleInXml(ApplicationContext ac,String pageName,String xmlFile) throws Exception
	{
		this.xtb = new XmlToBean(xmlFile);
		List<Page> pageList = ((Pages) xtb.getBeanFromXml(Pages.class)).getPage();
		Map<String,Object> map = new HashMap<>();
		for(Page page:pageList)
		{
			//System.out.println(page);
			DateFromTableToView dateFromTableToView = ac.getBean(page.getFunctionClassName(),DateFromTableToView.class);
			map.putAll(dateFromTableToView.GetDataFromTableToView(ac,pageName,this.xtb)); 
		}
		return map;
	}
}
