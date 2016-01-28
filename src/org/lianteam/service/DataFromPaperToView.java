package org.lianteam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.xmlBean.Pages;
import org.lianteam.mapper.PaperMapper;
import org.lianteam.vo.WhereCondition;
import org.lianteam.xmlBean.Page;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;

public class DataFromPaperToView implements DataFromTableToView {
	@Override
	public Map<String,Object> GetDataFromTableToView(ApplicationContext ac, String pageName, XmlToBean xtb)
			throws Exception {
		Map<String,Object> map = new HashMap<>();
		List<Page> pageList = ((Pages)xtb.getBeanFromXml(Pages.class)).getPageList();
		for(Page page:pageList)
		{
			if(page.getPageName().equals(pageName)&&page.getFunctionClassName().equals("DataFromPaperToView"))
			{
				WhereCondition whereCondition = new WhereCondition();
				whereCondition.setCategory_idList(page.getId());
				whereCondition.setCategory_idList(page.getCategory_id());
				whereCondition.setLimit(page.getLimit());
				map.put(page.getDataBind(),ac.getBean("paperMapper",PaperMapper.class).getPaperByCategory_idByIdByLimit(whereCondition));
				map.put(page.getDataBind()+"_name", page.getDisplayName());
			}
		
		}
		return map;
	}
	
}
