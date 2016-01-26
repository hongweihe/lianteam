package org.lianteam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.xmlBean.Page;
import org.lianteam.xmlBean.Pages;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;

public class DataCollectionImpl implements DataCollection {
	private XmlToBean xtb;

	@Override
	public Map<String, Object> GetDataCollection(ApplicationContext ac, String pageName, String xmlFile) throws Exception {
		this.xtb = new XmlToBean(xmlFile);
		List<Page> pageList = ((Pages) this.xtb.getBeanFromXml(Pages.class)).getPageList();
		Map<String,Object> map = new HashMap<>();
		for(Page page:pageList)
		{
			//System.out.println(page);
			//按照预先在webconfig.xml中定义的方法名称或者类名称 数据放入到map中
			DataFromTableToView dataFromTableToView = ac.getBean(page.getFunctionClassName(),DataFromTableToView.class);
			map.putAll(dataFromTableToView.GetDataFromTableToView(ac,pageName,this.xtb)); 
		}
		return map;
	}
}
