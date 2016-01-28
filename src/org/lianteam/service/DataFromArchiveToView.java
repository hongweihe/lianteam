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
/*
 * 该类吧数据库中t_archive表的数据，按照pageName值绑定到 DataBind中
 */
public class DataFromArchiveToView implements DataFromTableToView {
	
	private XmlToBean xtb;
	@Override
	public Map<String, Object> GetDataFromTableToView(ApplicationContext ac,String pageName,XmlToBean xtb) throws Exception {
		Map<String,Object> map = new HashMap<>();
		this.xtb = xtb;
		List<Page> pageList = ((Pages) this.xtb.getBeanFromXml(Pages.class)).getPageList();
		for(Page page:pageList)
		{
			if(page.getPageName().equals(pageName) && page.getFunctionClassName().equals("DataFromArchiveToView"))
			{
				WhereCondition whereCondition = new WhereCondition();
				whereCondition.setIdList(page.getId());
				whereCondition.setCategory_idList(page.getCategory_id());
				whereCondition.setLimit(page.getLimit());
				map.put(page.getDataBind(), ac.getBean("archiveMapper",ArchiveMapper.class).getArchiveByCategory_idByIdByLimit(whereCondition));
				map.put(page.getDataBind()+"_name",page.getDisplayName());
				String tmp = "";
				for(int i : page.getCategory_id())
				{
					tmp+=i+",";
				}
				map.put(page.getDataBind()+"_category_id", tmp);
			}
		}
		return map;
	}
}
