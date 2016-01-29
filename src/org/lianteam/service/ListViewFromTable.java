package org.lianteam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.mapper.ArchiveMapper;
import org.lianteam.mapper.FocusImageMapper;
import org.lianteam.mapper.PaperMapper;
import org.lianteam.mapper.WebConfigMapper;
import org.lianteam.pojo.WebConfig;
import org.lianteam.vo.ListViewCondition;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//
public class ListViewFromTable {
	private ApplicationContext ac;
	public Map<String,Object> getListViewFromTable(String pageName) throws Exception
	{
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		Map<String,Object> map = new HashMap<String,Object>();
		List<WebConfig> webConfigList = ac.getBean("webConfigMapper",WebConfigMapper.class).getWebConfigByPageName(pageName);
		for(WebConfig webConfig : webConfigList)
		{
			switch(webConfig.getTablename())
			{
			 case "t_archive" :
				 ListViewCondition listViewCondition = new ListViewCondition(webConfig.getCategory_id(),webConfig.getLimit());
				 map.put(webConfig.getDatabind(), ac.getBean("archiveMapper",ArchiveMapper.class).getListByCategory_idAndLimit(listViewCondition));
				 map.put(webConfig.getDatabind()+"_cfg",webConfig);
				 break;
			 case "t_focusimage":
				 ListViewCondition listViewCondition1 = new ListViewCondition(webConfig.getCategory_id(),webConfig.getLimit());
				 map.put(webConfig.getDatabind(), ac.getBean("focusImageMapper",FocusImageMapper.class).getListByCategory_idAndLimit(listViewCondition1));
				 map.put(webConfig.getDatabind()+"_cfg",webConfig);
				 break;
			 case "t_paper":
				 ListViewCondition listViewCondition11 = new ListViewCondition(webConfig.getCategory_id(),webConfig.getLimit());
				 map.put(webConfig.getDatabind(), ac.getBean("paperMapper",PaperMapper.class).getListByCategory_idAndLimit(listViewCondition11));
				 map.put(webConfig.getDatabind()+"_cfg",webConfig);
				 break;
			default :
				return null;
			}
		}
		return map;
	}
	
}
