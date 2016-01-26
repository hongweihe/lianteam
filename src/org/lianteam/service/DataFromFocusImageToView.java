package org.lianteam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.lianteam.mapper.FocusImageMapper;
import org.lianteam.vo.WhereCondition;
import org.lianteam.xmlBean.*;

public class DataFromFocusImageToView implements DataFromTableToView {
	private XmlToBean xtb;
	@Override
	public Map<String, Object> GetDataFromTableToView(ApplicationContext ac, String pageName, XmlToBean xtb)
			throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		this.xtb = xtb;
		List<Page> pageList = ((Pages)this.xtb.getBeanFromXml(Pages.class)).getPageList();
		for(Page page:pageList)
		{
			if(page.getPageName().equals(pageName)&&page.getFunctionClassName().equals("DataFromFocusImageToView"))
			{
				WhereCondition whereCondition = new WhereCondition();
				whereCondition.setIdList(page.getId());
				whereCondition.setCategory_idList(page.getCategory_id());
				whereCondition.setLimit(page.getLimit());
				map.put(page.getDataBind(), ac.getBean("focusImageMapper",FocusImageMapper.class).getFocusImageByCategory_idOrderBySortrank(whereCondition));
				map.put(page.getDataBind()+"_name",page.getDisplayName());
			}
		}
		return map;
	}

}
