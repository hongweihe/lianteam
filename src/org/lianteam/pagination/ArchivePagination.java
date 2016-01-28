package org.lianteam.pagination;

import java.util.HashMap;
import java.util.Map;

import org.lianteam.mapper.ArchiveMapper;
import org.lianteam.vo.WhereCondition;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ArchivePagination implements Pagination {

	private ApplicationContext ac;
	@Override
	public Map<String, Object> getPagination(WhereCondition whereCondition) throws Exception {
		// TODO Auto-generated method stub
		//whereCondition 这里仅提供category字段就可以完成相关的功能 
		int pageNow = whereCondition.getPageNow();
		int pageSize = whereCondition.getPageSize();
		Map<String,Object> map = new HashMap<>();
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		
		map.put("pageNow", pageNow);
		
		ArchiveMapper achieveMapper = ac.getBean("archiveMapper",ArchiveMapper.class);
		
		map.put("pageList", achieveMapper.getArchiveListPagination(whereCondition));
		String category_id = "";
		for(int i : whereCondition.getCategory_idList())
		{
			category_id+=i+",";
		}
		map.put("category_id", category_id);//用于回显
		
		//获得总页数
		int pageCount = achieveMapper.getTotalByCategory_id(whereCondition);//获取总的条目数
		
		
		//总页数计算
		int total=1;
		if((pageCount%pageSize) == 0)
		{
			total = (pageCount/pageSize);
		}
		else
		{
			total = (pageCount/pageSize)+1;
		}
		map.put("total",total);
		
		//分页面的逻辑分析计算
		//是否出现上一页或者下一页
		int prePage = 1;
		int nextPage = 1;
		if(pageNow <= 0)
		{
			pageNow = 1;
		}
		if(pageNow == 1)
		{
			prePage = 0;
			nextPage =1;
		}
		if(pageNow <= total)
		{
			prePage = 1;
			nextPage = 0;
		}
		
		
		map.put("prePage",prePage);
		map.put("nextPage",nextPage);
		
		//分页页码的分布与整体翻页
		int pageStart= 1;
		int pageEnd= 5;
		pageStart = ((pageNow/pageSize)*pageSize)+1;
		if(pageStart > pageSize)
		{
			pageStart = ((pageNow/pageSize)*pageSize);
		}
		
		if(pageStart>total)
		{
			pageStart = total;
		}
		
		pageEnd = pageStart+pageSize-1;
		if(pageEnd>total)
		{
			pageEnd = total;
		}
		map.put("pageStart", pageStart);
		map.put("pageEnd", pageEnd);

		return map;
	}
	
	
}
