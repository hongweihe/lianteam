package org.lianteam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.mapper.ArchiveMapper;
import org.lianteam.vo.WhereCondition;
import org.lianteam.xmlBean.Page;
import org.lianteam.xmlBean.Pages;
import org.lianteam.xmlBean.XmlToBean;

import org.springframework.context.ApplicationContext;

public class GetDataFromArchiveToView implements DateFromTableToView {
	
	private XmlToBean xtb;
	
	public GetDataFromArchiveToView()
	{
		
	}
	@Override
	public Map<String, Object> GetDataFromTableToView(ApplicationContext ac,String pageName,XmlToBean xtb) throws Exception {
		Map<String,Object> map = new HashMap<>();
		this.xtb = xtb;
		List<Page> pageList = ((Pages) this.xtb.getBeanFromXml(Pages.class)).getPage();
		for(Page page:pageList)
		{
			if(page.getPageName().equals(pageName))
			{
				WhereCondition whereCondition = new WhereCondition();
				whereCondition.setIdList(page.getId());
				whereCondition.setCategory_idList(page.getCategory_id());
				whereCondition.setLimit(page.getLimit());
				map.put(page.getDataBind(), ac.getBean("archiveMapper",ArchiveMapper.class).getArchiveByCategory_idByIdByLimit(whereCondition));	
			}
		}
		return map;
	}
}
